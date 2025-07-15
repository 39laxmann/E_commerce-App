// ignore: unused_import
import 'dart:ffi';

import 'package:e_commerce_app/screens/change_password.dart';
import 'package:e_commerce_app/screens/edit_profile.dart';
import 'package:e_commerce_app/screens/setting.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context)=> MyAccount()));
          },
        icon:  Icon(Icons.arrow_back,color: Colors.blue,)
        ),
        title:const Text('Your Profile',textAlign:TextAlign.start,style: TextStyle(fontSize: 24,color:Colors.black)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person,color:Colors.orange),),
          IconButton(
            onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                  },
                   icon: const Icon(Icons.settings,color:Colors.black)),
        ],
        elevation: 1,
        backgroundColor: Colors.white,
      ),



      body:SingleChildScrollView(
        padding:const EdgeInsets.all(12) ,
        child:Column(
          children: [
            //Icon(Icons.real_estate_agent),
            Card(
              
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                elevation: 3,
              child: Padding(
                padding:const EdgeInsets.all(15),
                child: Row(
                   children: [
                   
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/product_category_image/laptop.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    //name and email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                          Text(
                            'Random User',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height:4),
                          Text(
                            'randomperson.email.com',
                            style: TextStyle(
                             fontSize: 14,
                              color: Colors.grey,
                          ),
                          ),
                      ],
                    )
                   ],
                ),
              ),
            ),


            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                    
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    elevation: 3,
                    child:Padding(
                      padding: const EdgeInsets.all(15),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text(
                            'Contact',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,    
                            ),
                          ),
                          SizedBox(height:4),
                          Text(
                            'Phone: +9779723456'
                          ),
                          SizedBox(height:4),
                          Text(
                            'Address: Pulchowk,Lalitpur',
                          ),
                        ],
                      )
                      ),
              
              ),
            ),

           

            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My Orders',
                            style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      
                            
                          ),
                          SizedBox(height:4),
                          Text(
                            'Order1: Delivered',
                            style: TextStyle(fontSize: 15),
                          ),
                           SizedBox(height:4),
                          Text(
                            'Order2: On the way',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                                    
                      ),
                    ),  
              ),
            ),

             

            Card(
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                  child:Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Switch(
                        //   value: true,
                        //   onChanged: ()  {},
                        // ),
                        const Text(
                          'Receive notifications',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ), 
                  )

            
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );},
                child: Text("Edit profile",style: TextStyle(fontSize: 19),)),
                TextButton(
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePassword()),
                  );},
                child: Text("change password",style: TextStyle(fontSize: 19),))
              ],
            ),

          ],
        )
      )
      
      );





  }
}
