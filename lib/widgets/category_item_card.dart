import 'package:flutter/material.dart';

class CategoryItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 4, right: 4, top: 4),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 10),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ]),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '1 tareas',
            style: Theme.of(context).textTheme.caption,
          ),
          Text('Trabajo', style: Theme.of(context).textTheme.subtitle1),
          LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Container(
                    width: constraints.maxWidth,
                    height: 5,
                    decoration: BoxDecoration(
                      // color: Colors.grey.shade600,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: constraints.maxWidth * 0.5,
                    height: 5,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(79, 116, 255, 1)),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
