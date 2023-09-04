import 'package:flutter/material.dart';

class TransactionModel{
  String name;
  dynamic avatar;
  String currentBalance;
  String month;
  String changePrecentageIndicator;
  String changePrecentage;
  Color? color;
  
  TransactionModel({
    this.avatar,
    required this.changePrecentage,
    required this.changePrecentageIndicator,
    required this.currentBalance,
    required this.month,
    this.color,
    required this.name
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(avatar: "assets/icons/avatar1.png",
  currentBalance: "\$5482",
  changePrecentage: "0,41%",
  changePrecentageIndicator: "up",
  month: "Jan",
  name: "Supreme Leader",
  color: Colors.green[100]),
  
  TransactionModel(avatar: "assets/icons/avatar2.png",
  currentBalance: "\$4252",
  changePrecentage: "4.54%",
  changePrecentageIndicator: "down",
  month: "Mar",
  name: "Jane Doe",
  color: Colors.orange[100]),
  
  TransactionModel(avatar: "assets/icons/avatar3.png",
  currentBalance: "\$4052",
  changePrecentage: "1,27%",
  changePrecentageIndicator: "down",
  month: "Mar",
  name: "Alex Doe",
  color: Colors.red[100]),
 
  TransactionModel(avatar: "assets/icons/avatar4.png",
  currentBalance: "\$5052",
  changePrecentage: "3.09%",
  changePrecentageIndicator: "up",
  month: "Mar",
  name: "Sam Doe",
  color: Colors.deepPurple[100]),
  
  TransactionModel(avatar: "assets/icons/avatar1.png",
  currentBalance: "\$5482",
  changePrecentage: "0,41%",
  changePrecentageIndicator: "up",
  month: "Jan",
  name: "Supreme Leader",
  color: Colors.green[100]),
  
  TransactionModel(avatar: "assets/icons/avatar2.png",
  currentBalance: "\$5482",
  changePrecentage: "0,41%",
  changePrecentageIndicator: "up",
  month: "Jan",
  name: "Supreme Leader",
  color: Colors.green[100]),
  
  TransactionModel(avatar: "assets/icons/avatar3.png",
  currentBalance: "\$4252",
  changePrecentage: "4.54%",
  changePrecentageIndicator: "down",
  month: "Mar",
  name: "Jane Doe",
  color: Colors.orange[100]),
];