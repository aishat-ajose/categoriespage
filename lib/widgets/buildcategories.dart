import 'package:categoriespage/widgets/buildfoodcards.dart';
import 'package:categoriespage/model/food.dart';
import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  final String name;
  final List<Food> food;

  BuildCategory({this.name, this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:15.0, bottom: 0.0, top: 10.0),
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:10.0, top: 30.0),
            child: Text(name,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),),
          ),
          Align(
          alignment: Alignment.topRight,
          child: Text('See all  ',
          style: TextStyle(color: Colors.orange)),
          ),
          Container(
            height: 210.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: food.length,
              itemBuilder: (BuildContext context, int index){
                return  BuildFoodCard(food:food[index]);
              }
            ),
          )

        ],
      )
    );
  }
}