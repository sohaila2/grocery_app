import 'package:edeka_app/models/items.dart';
import 'package:flutter/material.dart';



class ItemCard extends StatelessWidget {
final function;
final icon;


ItemCard({this.function, this.icon});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(24),
      shrinkWrap: true,
      primary: false,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.9,
      children: List.generate(items.length, (index) {
        var item = items[index];
        return InkWell(
          onTap: (){
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 12.0
                  )
                ]
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset(item.image),

                ),
                Text(item.itemName, style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('\$ ${item.itemPrice}', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),),
                      Spacer(),
                      GestureDetector(onTap:function,child: Icon(icon, size: 24, color: Colors.green,)),
                      Container(
                        height: 24,
                        width: 0.2,
                        color: Colors.grey,
                      ),
                      Icon(Icons.favorite_outline, color: Colors.grey, size: 24,)

                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),

    );
}






















// class ItemCard extends StatelessWidget {
//   // String image;
//   // String itemName;
//   // String origin;
//   // String itemPrice;
//   // ItemCard({required this.image,required this.itemName,required this.origin,required this.itemPrice });
//
//   // final Items items;
//   //
//   //
//   // ItemCard({required this.items});
//   var items = eachItem;
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//         crossAxisCount: 2,
//         scrollDirection: Axis.vertical,
//         padding: EdgeInsets.all(24),
//     shrinkWrap: true,
//     primary: false,
//     crossAxisSpacing: 16,
//     mainAxisSpacing: 16,
//     childAspectRatio: 0.75,
//     children: List.generate(items.length, (index) {
//     var item = items[index];
//     return InkWell(
//     onTap: (){
//
//     },
//     child: Container(
//     decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(8),
//     boxShadow: [
//     BoxShadow(
//     color: Colors.black.withOpacity(0.1),
//     blurRadius: 12.0
//     )
//     ]
//     ),
//     child: Column(
//     children: [
//     SizedBox(
//     width: 125,
//     height: 125,
//     child: Image.asset(item['imageName']),
//
//     ),
//     Text(item['name'], style: TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.w600
//     ),),
//     SizedBox(height: 8),
//     Text(item['size'], style: TextStyle(fontSize: 12),),
//     Spacer(),
//     Divider(
//     height: 0,
//     thickness: 0.3,
//     ),
//     Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Row(
//     children: [
//     Text('\$ ${item["price"]}', style: TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w700
//     ),),
//     Spacer(),
//     Icon(Icons.add_circle_outline, size: 24, color: Colors.green,),
//     Container(
//     height: 24,
//     width: 0.2,
//     color: Colors.grey,
//     ),
//     Icon(Icons.favorite_outline, color: Colors.grey, size: 24,)
//
//     ],
//     ),
//     )
//     ],
//     ),
//     ),
//     );
//
//     }
//     );
//   }
}