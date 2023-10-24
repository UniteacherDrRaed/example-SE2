

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: const Icon(Icons.add_call,
        size: 40,
        color: Colors.deepOrangeAccent,),
        backgroundColor: Colors.blue,
        title:  const Text("example SE2"),
        centerTitle: true,
        actions: [
          IconButton(
            highlightColor: Colors.grey.shade300,
              onPressed: (){
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                    duration: Duration(seconds: 2),
                    showCloseIcon:true,
                    closeIconColor:Colors.white,
                    backgroundColor:Colors.red,
                    content: Text("deleted email")));
              },
              icon:const Icon(Icons.add_circle,size: 50,)),
        ],
      ) ,
      body: Container(
        margin:const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient:const LinearGradient(
            begin: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.yellow,
            ]
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(4,5),
              color: Colors.blue,
            )
          ]
        ),
        child:const Text("Container 1"),
      ),
    );
  }
}
