import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
class WorkoutAPP extends StatefulWidget {
  const WorkoutAPP({super.key});
  static const String routeName="WorkOut";

  @override
  State<WorkoutAPP> createState() => _WorkoutAPPState();
}

class _WorkoutAPPState extends State<WorkoutAPP> {
  List<String>tabs=[
    "All type",
    "Full body",
    "upper",
    "Lower",

  ];

int index=0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Container(

          child: Row(
           children: [
             CircleAvatar(
               radius: 30, // Image radius
               backgroundImage: AssetImage("assets/images/aa.jpeg"),
             ),
             SizedBox(width: 22,),
             Text("Hellow ,Jade "),

           ],
          ),
        ),
        actions: [
          Icon(Icons.notification_add),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: 1,
        onTap: (value){
          index=value;
          setState(() {

          });

        },
        backgroundColor: Colors.white70,
        items: [

          BottomNavigationBarItem(
            icon:ImageIcon(AssetImage("assets/images/icons.png"),color: Colors.green,) ,
            label: "",
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(AssetImage("assets/images/grid.png"),color: Color(0xFF101828),) ,
            label: "",
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(AssetImage("assets/images/calendar.png"),color: Color(0xFF101828),) ,
            label: "",
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(AssetImage("assets/images/user-03.png"),color: Color(0xFF101828),) ,
            label: "",
          ),

        ],
      ),
      body: Column(
        children: [
          Gap(8),
          Padding(
            padding: const EdgeInsets.all(16.0),

            child: Row(
              
              children: [
              Image(image: AssetImage("assets/images/a.png"),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(

              children: [
                Text("Worked programe",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),

          ),
          Gap(10),
          Column(

        children: [
          CarouselSlider(items: [
            Container(

              width: 280,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFECFDF3),

                image: DecorationImage(image: AssetImage("assets/images/sport.png",),),
              ),
            ),
          ],
              options: CarouselOptions())
        ],
      ),
          Gap(2),
          Column(

            children: [
              CarouselSlider(items: [
                Container(

                  width: 280,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFECFDF3),

                    image: DecorationImage(image: AssetImage("assets/images/sport2.png",),),
                  ),
                ),
              ],
                  options: CarouselOptions())
            ],
          ),

        ],
      ),

    );
  }
}
