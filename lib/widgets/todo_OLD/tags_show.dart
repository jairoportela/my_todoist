import 'package:flutter/material.dart';

class TagsShow extends StatelessWidget {
  final Function _deleteTag;
  final BoxConstraints _constrains;
  final List<String> _tags;
  final bool isAddView;

  TagsShow(this._deleteTag, this._constrains, this._tags, this.isAddView);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).accentColor;

    return Container(
      height: 30,
      width: _constrains.maxWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: isAddView
              ? Chip(
                  label: Text(
                    '${_tags[i]}',
                    //style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: color.withOpacity(0.5),
                  deleteIcon: Icon(
                    Icons.cancel,
                    size: 15,
                  ),
                  onDeleted: () => _deleteTag(i),
                )
              : Chip(
                  label: Text(
                    '${_tags[i]}',
                    //style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: color.withOpacity(0.5),
                ),
        ),
        itemCount: _tags.length,
      ),
    );
  }
}
