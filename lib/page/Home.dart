

import 'package:flutter/material.dart';

import '../Constant/shard_const.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(User_SharedPref().getName() ?? "", style: TextStyle(fontSize: 24),),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(onPressed: (){

              User_SharedPref().setName(userId: "Toukir");
            }, child: Text("Add Data")),
          ),

          Center(
            child: ElevatedButton(onPressed: (){

              User_SharedPref().getName();
              setState(() {

              });

            }, child: Text("Get Data")),
          ),


          Center(
            child: ElevatedButton(onPressed: (){

              User_SharedPref().clear();
              setState(() {

              });

            }, child: Text("Clear")),
          ),
        ],
      ),
    );
  }
}
