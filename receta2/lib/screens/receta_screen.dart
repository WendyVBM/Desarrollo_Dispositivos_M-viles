
import 'package:flutter/material.dart';

class RecetaScreen extends StatelessWidget{
  const RecetaScreen({super.key});

@override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.add),),
          Tab(icon: Icon(Icons.traffic),),
          Tab(icon: Icon(Icons.favorite),),

        ],
      ),
      body: TabBarView(
        children: [
           Icon(Icons.add),
          Icon(Icons.traffic),
          Icon(Icons.favorite)

        ],
        ),
      )
      );
  }
}