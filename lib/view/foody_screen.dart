
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_1/util/my_colors.dart';
import 'package:flutter_google_1/view/lifestyle_screen.dart';
import 'package:flutter_google_1/view/travel_screen.dart';

class FoodyScreen extends StatelessWidget {
  const FoodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
     Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
        children: [
       Row(
         children: [

//  InkWell(
//           onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>LifestyleScreen()));},
//           child: Icon(Icons.arrow_back,color: Colors.grey,size: 20)),

           Icon(Icons.dehaze,weight: 50,color: Colors.grey,),
           SizedBox(width: 5,),
           Text("Foody",style: TextStyle(
        color: MyColors.amber,
        fontSize: 20,fontWeight: FontWeight.bold
           ),),
           Spacer(),
           Icon(Icons.search,color: MyColors.grey,weight: 50,),
           SizedBox(width: 5,),
          Icon(Icons.person,color: MyColors.grey,weight: 50,),
          InkWell(onTap: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>TravelScreen()));
          },
            child: Icon(Icons. arrow_forward,color: MyColors.grey,weight: 50, ))
         ],
       ),
       SizedBox(height: 10,),
       Column(crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Container(height:150 ,width: 2000,
           decoration:  BoxDecoration(border: Border.all(color:MyColors.grey,
width: 5),
            image:
             DecorationImage(
              image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.cover),
           
           ),
           ),
         ],
        ),
 Text("Easier making cooking ingredients.Bread,eggs ,chees and kitchen") ,
SizedBox(height: 10,),
 Row(children: [
  Text("BLOG CATEGORIES",style: TextStyle(
    fontWeight: FontWeight.bold ,fontSize: 20
  ),),
Spacer(),
  Text("View All",style: TextStyle(

    fontWeight: FontWeight.bold,
  ),),
 ],),
 SizedBox(height: 10,),
 Container(height: 200,width: 2000,
 decoration: BoxDecoration(border: Border.all(color: MyColors.grey,
width: 5),
  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM1lxxTHJc9ZdWLzmvUNpcmLjdlIBVyOGwFg&s"),fit: BoxFit.cover)
 ),),
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text("Lunch")
],),


Container(height: 140,width: 2000,
decoration: BoxDecoration(border: Border.all(color: MyColors.grey,
width: 5),
  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDgpd1QzqXn0JFy-_3nCNqfMXnrDunfxwy-w&s"),fit: BoxFit.cover)
),)
        ],
       ),
     ) ,
    );
  }
}