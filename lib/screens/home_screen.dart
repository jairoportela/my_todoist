import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/padding_text.dart';

import '../widgets/category_item_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/todo_item_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _borderAnimation;

  var _isCollapsed = true;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _borderAnimation = Tween<double>(begin: 0, end: 30).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInBack));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _showDrawer() {
    setState(() {
      if (_isCollapsed) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      _isCollapsed = !_isCollapsed;
    });
  }

  Widget _buildSizedBox(double height) {
    return SizedBox(height: height);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);

    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: _isCollapsed ? 0 : 0.60 * size.width,
      right: _isCollapsed ? 0 : -0.75 * size.width,
      duration: Duration(milliseconds: 600),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AnimatedBuilder(
          animation: _borderAnimation,
          builder: (context, child) {
            return Material(
              color: Theme.of(context).backgroundColor,
              borderRadius:
                  BorderRadius.all(Radius.circular(_borderAnimation.value)),
              elevation: 8,
              child: child,
            );
          },
          child: SafeArea(
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomAppBar(_showDrawer),
                    PaddingText(
                      'Listo para hoy Jairo',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PaddingText('CATEGORIAS',
                        style: Theme.of(context).textTheme.subtitle2),
                    _buildSizedBox(20),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          for (var i = 0; i < 3; i++) CategoryItemCard(),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    PaddingText(
                      'TAREAS PARA HOY',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    _buildSizedBox(20),
                    Container(
                      height: size.height - 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) => TodoItemCard(),
                        itemCount: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
