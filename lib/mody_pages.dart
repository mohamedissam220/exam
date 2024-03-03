import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/News.dart';
import 'package:exam/WorkOUT_APP.dart';
import 'package:exam/home.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class ModyPages extends StatefulWidget {
  const ModyPages({super.key});
  static const String routeName="Modypages";

  @override
  State<ModyPages> createState() => _ModyPagesState();
}

class _ModyPagesState extends State<ModyPages> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[

              Image(image: AssetImage("assets/images/Group.png"),width: 34,height: 40,),
              SizedBox(width: 10,),
              Text('Mody'),


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
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(

              children: [
                Text("Hellow , Sara Roise",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text("He are feleeing today ?"),
              ],
            ),
          ),
          Gap(30),
          Row(
            children: [
              Gap(30),
              Row(

                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset("assets/images/Frame.png"),


                  ),


                ],
              ),
              Gap(30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset("assets/images/cool.png"),

                  )
                ],
              ),
              Gap(30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset("assets/images/happy.png"),

                  )
                ],
              ),
              Gap(30),
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset("assets/images/sad.png"),


                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    ],
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 28,width: 326,),
          Row(

            children: [
              Container(
                  width:67 ,
                  height: 28,
                  child: Text("Feature",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
              Spacer(),
              Text("see more",style: TextStyle(color: Colors.green),),

              IconButton(onPressed: (){}, icon:Icon(Icons.navigate_next,color: Colors.green,))
            ],
          ),
          Gap(12),
          Column(

            children: [
              CarouselSlider(items: [
                Container(

                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFFECFDF3),
                    image: DecorationImage(image: AssetImage("assets/images/Frame 24.png",),),
                  ),
                ),
              ],
                  options: CarouselOptions())
            ],
          ),
          Gap(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/ellips.png"))
            ],
          ),
          SizedBox(height: 10,width:326 ,),
          Row(

            children: [
              Container(
                  width:67 ,
                  height: 28,
                  child: Text("Exersize",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
              Spacer(),
              Text("see more",style: TextStyle(color: Colors.green),),

              IconButton(onPressed: (){}, icon:Icon(Icons.navigate_next,color: Colors.green,))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/Frame 31.png")),
              Gap(24),
              Image(image: AssetImage("assets/images/Frame 35.png")),
            ],),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/Frame 33.png")),
              Gap(24),
              Image(image: AssetImage("assets/images/Frame 35.png")),
            ],),


        ],
      ),
    );



  }
  List<Widget>tabs=[
    modipages(),
    WorkoutAPP(),
    Newspage(),
  ];
}
