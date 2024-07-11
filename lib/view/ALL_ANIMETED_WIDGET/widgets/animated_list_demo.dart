import 'package:flutter/material.dart';

class AnimatedListDemo extends StatefulWidget {
  @override
  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<int> _data = <int>[0, 1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedList Demo'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _addItem();
            },
            child: Text('Add Item'),
          ),
          ElevatedButton(
            onPressed: () {
              _removeItem();
            },
            child: Text('Remove Item'),
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _data.length,
              itemBuilder: (context, index, animation) {
                return _buildItem(_data[index], animation);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addItem() {
    final int index = _data.length;
    _data.add(index);
    _listKey.currentState?.insertItem(index);
  }

  void _removeItem() {
    if (_data.isNotEmpty) {
      final int index = _data.length - 1;
      final int removedItem = _data.removeAt(index);
      _listKey.currentState?.removeItem(
        index,
            (context, animation) => _buildItem(removedItem, animation),
      );
    }
  }

  Widget _buildItem(int item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text('Item $item'),
        ),
      ),
    );
  }
}
