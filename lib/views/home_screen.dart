import 'package:edeka_app/components/category_names.dart';
import 'package:edeka_app/components/item.dart';
import 'package:flutter/material.dart';

import '../components/category.dart';

import '../models/categories.dart';
import '../models/items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int priceCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.short_text_outlined),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: [
                Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.blue,
                      size: 22,
                    )),
                Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 22,
                    )),
                SizedBox(width: 16),
              ],
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "EDEKA",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SizedBox(
                  width: 270,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search product here ',
                        fillColor: Colors.grey.shade100,
                        filled: true),
                  ),
                ),
              ),
              Container(
                height: 60,
                color: Colors.grey.shade100,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.category,
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: categories.map((e) {
              return CategoryCard(categories: e);
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryName(name: 'bakery'),
                CategoryName(name: 'fruits'),
                CategoryName(name: 'vegetables'),
                CategoryName(name: 'milk'),
              ],
            ),
          ),
          ItemCard(
            icon: Icons.add,
            function: (){
              setState(() {
              priceCounter++;
              });
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total: $priceCounter"),

                ElevatedButton(onPressed: (){

                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Cart",
                          style: TextStyle(color: Colors.white),),

                        Icon(Icons.shopping_cart),
                      ],
                    ))
              ],
            ),
          )
        ],

      ),


    );
  }
}
