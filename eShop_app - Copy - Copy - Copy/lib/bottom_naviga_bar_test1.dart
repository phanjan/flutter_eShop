import 'package:flutter/material.dart';

class bottomappbar extends StatefulWidget {
  const bottomappbar({Key? key}) : super(key: key);

  @override
  State<bottomappbar> createState() => _bottomappbarState();
}

class _bottomappbarState extends State<bottomappbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Floating Action Button',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black38,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        //elevation: 10,
        //shape: BeveledRectangleBorder(
        // borderRadius: BorderRadius.circular(20),
        // side: BorderSide(color: Colors.blue, width: 2, style: BorderStyle.solid)
        //mini: true,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),],),),

            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.shop,
                    color: Colors.white,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(color: Colors.white),
                  ),],),),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    'Fav',
                    style: TextStyle(color: Colors.white),
                  ),],),   ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    'Setting',
                    style: TextStyle(color: Colors.white),
                  ),],), )],),),);


  }
}
