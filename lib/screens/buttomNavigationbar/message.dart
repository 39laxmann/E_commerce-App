import 'package:e_commerce_app/screens/buttomNavigationbar/message/message_card.dart';
import 'package:flutter/material.dart';


class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            centerTitle: false,
                       
            title: Text('Your messages', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            
            ContainerCard(companyName: "Company1", imageLink: 'assets/product_category_image/laptop.png', message:"Still interested in product."),
            Divider(),
            ContainerCard(companyName: "Company2", imageLink: 'assets/product_category_image/keyboard.png', message: "We are ready for your service",),
            Divider(),
            
          ],
        ),

    ),
    );
  }
}

class ContainerCard extends StatelessWidget{
  final String companyName;
  final String imageLink;
  final String message;
  const ContainerCard({super.key,required this.companyName,required this.message,required this.imageLink});

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> MessageCard()),
      );  
    },
    child: Padding(
      
        padding: const EdgeInsets.all(8.0),
       child: Row(
          children: [
            CircleAvatar(
             radius: 40,
             backgroundImage: AssetImage(
                imageLink
      ),
    ),
    
    SizedBox(width: 12,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(companyName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
    SizedBox(height: 5,),
    Text(
      message,style: TextStyle(color: Colors.grey),
      ),
      ],
    ),
    
     
    
        ],
      ),
      
      
    
    ),
  );



  }
}