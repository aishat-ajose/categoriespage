import 'package:categoriespage/model/food.dart';
import 'package:flutter/material.dart';

class BuildFoodCard extends StatelessWidget {
  final Food food;
  BuildFoodCard({this.food}); 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      margin: EdgeInsets.only(top: 5.0 ,left:10.0, right:10.0),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          style: BorderStyle.none,
        ),
        image: DecorationImage(
          image: AssetImage(food.imgPath),
          fit: BoxFit.cover
        )
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0.0,
            bottom: 0.0,
            width: 180,
            height: 70.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)
                    ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black, Colors.black.withOpacity(0.1)
                  ]
                )
              ),
            ),
          ),

          Positioned(
            bottom: 5.0,
            right: 10.0,
            left: 10.0,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 100,
                      child: Text(food.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    ),
                    SizedBox(height: 6.0,),
                    Container(
                      width: 50.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        border: Border.all(
                          color: Colors.orange[100],
                          style: BorderStyle.solid
                        )
                      ),
                          child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("Details",
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 12.0 
                          )),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 50.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.orange,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text("Order",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0
                      ),)
                    ),
                    onTap: (){
                    },
                  ),
                )
              ],    
            ),
          )
        ],
      )
      
    );
  }
}