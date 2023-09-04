import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_app/constants/app_textstyle.dart';
import 'package:shop_app/data/transaction_data.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return  Container(
  
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
      border: Border.all(color: Colors.grey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(5),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: transaction.color,
                ),
                child: Image.asset(transaction.avatar),
              ),
              SizedBox(width:10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(transaction.name,style: ApptextStyle.LISTTILE_TITLE,),
                 Text(transaction.month,style: ApptextStyle.LISTTILE_SUB_TITLE,)
                ],
              ),
             
            ],
          ),
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(transaction.currentBalance,
                      style: ApptextStyle.LISTTILE_TITLE,),
                      Row(
                        children: [
                          transaction.changePrecentageIndicator == "up" ? Icon(FontAwesomeIcons.levelUpAlt,size: 10,color: Colors.green,) : Icon(
                            FontAwesomeIcons.levelDownAlt,size: 10,color: Colors.red,
                          )
                        ],)
                    ],
                  )
                ],
              )
        ]),
        

      );
    

  }
}