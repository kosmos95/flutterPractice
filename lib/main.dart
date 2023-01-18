import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Tutoriual PXP', home: PxpHome(), debugShowCheckedModeBanner: false,));
}

class PxpHome extends StatelessWidget{
  void _iconButton()
  {
    print('Icon Button pressed');
  }

  void _iconSearch()
  {
    print('Icon Search Button pressed');
  } 

  void _iconAdd(){
    print('Icon Add Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'PXP Channel',
        onPressed: _iconButton,
      ),
      title: Text("PXP Channel"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), tooltip: 'Search',onPressed: _iconSearch)
      ],
    ),
    body: Center(
      child: Text('Welcom to PXP'),
    ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: _iconAdd,
      ),
    );
  }
}