import 'package:flutter/material.dart';
import 'package:shop_app/constants/app_textstyle.dart';
import 'package:shop_app/constants/color_constants.dart';
import 'package:shop_app/data/card_data.dart';
import 'package:shop_app/data/transaction_data.dart';
import 'package:shop_app/widgets/my_card.dart';
import 'package:shop_app/widgets/transaction_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BankingApp',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: kPrimaryColor,

          )
        ),
        leading: const Padding(padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            // backgroundImage: NetworkImage("https://source.unsplash.com/300x200/?person"),

          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notifications_active_outlined,
          color: Colors.black,size: 27,))
        ],

      ),
      body:  SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Container(
            height: 240,
            child: ListView.separated(
              separatorBuilder: (context,index) { 
                  return SizedBox(width: 10);
                },
                itemBuilder: (context,index){
                  return MyCard(card: myCards[index],);
                }, 
                itemCount: myCards.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                ),
          ),
          SizedBox(height: 30),
          Text("Recent Transactions",style: ApptextStyle.BODY_TEXT,),
          SizedBox(height: 15,),
          ListView.separated(
            itemBuilder: (context,index){
              return TransactionCard(
                transaction: myTransactions[index]
              );
            },
            separatorBuilder: (context,index){
              return SizedBox(height: 10 );
            },
            itemCount: myTransactions.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),)
         ]
        ),),
      ),
    );
  }
}