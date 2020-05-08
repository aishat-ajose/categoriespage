import 'package:categoriespage/widgets/buildcategories.dart';
import 'package:categoriespage/model/food.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final List<List<Object>> category = [
    ["Apetizer", [Food(name:"Spaghetti and chicken", imgPath: "assets/7.jpeg"),Food(name:"Cooked Noodles", imgPath: "assets/4.jpeg"),Food(name:"Food 1", imgPath: "assets/8.jpeg"),Food(name:"Food 1", imgPath: "assets/login.jpg")]],
    ["Deserts", [Food(name:"Pizza", imgPath: "assets/login.jpg"),Food(name:"Suya Rice", imgPath: "assets/3.jpeg"),Food(name:"Food 1", imgPath: "assets/2.jpeg"),Food(name:"Food 1", imgPath: "assets/6.jpeg")]],
    ["Fast Food", [Food(name:"Ham Burger", imgPath: "assets/2.jpeg"),Food(name:"Plantain Salad", imgPath: "assets/8.jpeg"),Food(name:"Food 1", imgPath: "assets/3.jpeg"),Food(name:"Food 1", imgPath: "assets/7.jpeg")]]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: (){},),
        title: Text('OrderEat',
        style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.payment, color: Colors.white,), onPressed: (){},),
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
        ],
      ),

      body: Container(
        child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index){
            return BuildCategory(name:category[index][0],food:category[index][1]);
          })

      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.deepOrange,
        items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.fastfood),
           title: new Text('Resturants'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.restaurant),
           title: Text('Categories')
         )
       ],
      ),
    );
  }
}