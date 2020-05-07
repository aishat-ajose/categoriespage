import 'package:categoriespage/food.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  List<List<Object>> category = [
    ["Apetizer", [Food(name:"Spaghetti", imgPath: "assets/6.jpeg"),Food(name:"Food 1", imgPath: "assets/4.jpeg"),Food(name:"Food 1", imgPath: "assets/8.jpeg"),Food(name:"Food 1", imgPath: "assets/login.jpg")]],
    ["Deserts", [Food(name:"Pizza", imgPath: "assets/login.jpg"),Food(name:"Food 1", imgPath: "assets/3.jpeg"),Food(name:"Food 1", imgPath: "assets/2.jpeg"),Food(name:"Food 1", imgPath: "assets/6.jpeg")]],
    ["Fast Food", [Food(name:"Ham Burger", imgPath: "assets/2.jpeg"),Food(name:"Food 1", imgPath: "assets/8.jpeg"),Food(name:"Food 1", imgPath: "assets/3.jpeg"),Food(name:"Food 1", imgPath: "assets/7.jpeg")]]
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
            return _buildCategories(category[index][0], category[index][1]);
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

  _buildCategories(String name, List<Food> food){
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
                return _buildFoodCards(food[index]);
              }
            ),
          )

        ],
      )
    );
  }

  _buildFoodCards(Food food) {
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
            height: 60.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
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
            bottom: 10.0,
            right: 10.0,
            left: 10.0,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(food.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(height: 6.0,),
                    Container(
                      width: 60.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid
                        )
                      ),
                          child: InkWell(
                        onTap: (){},
                        child: Center(
                          child: Text("Details",
                          style: TextStyle(
                            color: Colors.white,  
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
                        fontWeight: FontWeight.bold
                      ),)
                    ),
                    onTap: (){},
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