import 'package:flutter/material.dart';
import 'package:shop_app/constants/app_textstyle.dart';
import 'package:shop_app/constants/color_constants.dart';
import 'package:shop_app/data/card_data.dart';
import 'package:shop_app/widgets/my_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cards',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: kPrimaryColor,

          )
        ),
        leading: const Padding(padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            // backgroundImage: NetworkImage("https://placeimg.com/640/480/people"),

          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notifications_active_outlined,
          color: Colors.black,size: 27,))
        ],

      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (context,index){
                return MyCard(card: myCards[index]);
              }, 
              separatorBuilder: (context,index){
                  return SizedBox(height: 20,);
              }, 
              itemCount: myCards.length,
              shrinkWrap: true,
              
              ),
              
          ),
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.add,size:50,),

          ),
          SizedBox(height: 10,),
          Text('ADD CARD', style: ApptextStyle.LISTTILE_TITLE)
        ],
      )
    );
  }
}