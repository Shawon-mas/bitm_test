import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  int currentIndex=0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text('live',style: TextStyle(color: Colors.orange[300],fontSize: 30.0),),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
              width: 10,
              height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
            ))
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: 30,)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stories',style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                        ),
                        Positioned(

                          child: Container(
                            width: 150,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Stack(
                              overflow: Overflow.visible,
                              alignment: Alignment.topCenter,
                              children: [
                                Positioned(
                                  top: -20,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.red[400],
                                    child: CircleAvatar(
                                      radius: 23,
                                      backgroundImage: NetworkImage('https://www.seekpng.com/png/detail/60-604032_face-businessman-png-dummy-images-for-testimonials.png'),
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),),
                        Positioned(
                          bottom: 50,
                          child: Text('Add your story',style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),),),
                        Positioned(
                          bottom: 10,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xfff8f7f3),

                            child: CircleAvatar(
                              radius: 12,

                              backgroundImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/google-material-design-icons/48/ic_add_48px-512.png'),
                            ),
                          ),)

                      ],
                    ),
                    SizedBox(width: 10,),
                    //2nd
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage('https://images.squarespace-cdn.com/content/v1/58931e136b8f5b21e08707fb/1616055988306-G8S9X0XR6EV3U5M13X6A/jamal%2Bbhuyan%2Bdenmark%2Bbangladesh.jpeg?format=1000w',),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                        ),
                        Positioned(

                          child: Container(
                            width: 150,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              backgroundBlendMode: BlendMode.modulate,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            ),

                          ),),
                        Positioned(
                          left: 20,
                          bottom: 15,
                          child: Text('Jamal',style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),),),


                      ],
                    ),
                    SizedBox(width: 10,),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: 150.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoP6_loSyGxt2GK_bG_HrPVZHNvjKNjAU81AJdJsYDVcu3ZThXdMLW2Qek4Bdm9wynE9g&usqp=CAU',),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                        ),
                        Positioned(

                          child: Container(
                            width: 150,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              backgroundBlendMode: BlendMode.modulate,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),

                            ),

                          ),),
                        Positioned(
                          left: 20,
                          bottom: 15,
                          child: Text('Pitar',style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),),),


                      ],
                    ),
                  ],
                )

              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(

                        margin: EdgeInsets.all(10),
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text("For you",style: TextStyle(
                              fontSize: 16
                          ),),
                        )
                    ),
                    Container(

                        margin: EdgeInsets.all(10),
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text("Trending",style: TextStyle(
                            color: Colors.white,
                              fontSize: 16
                          ),),
                        )
                    ),
                    Container(

                        margin: EdgeInsets.all(10),
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text("Discover",style: TextStyle(
                              fontSize: 16,
                            color: Colors.white
                          ),),
                        )
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://www.seekpng.com/png/detail/60-604032_face-businessman-png-dummy-images-for-testimonials.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jon Peter",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        SizedBox(height: 5,),
                        Text("3 min ago",style: TextStyle(
                            fontSize: 12,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("See All",style: TextStyle(
                      fontSize: 14,

                      //fontWeight: FontWeight.bold,
                      color: Colors.orange[300]
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Container(

                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(

                    children: [
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 130,
                              height: 115.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),

                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lorem Ipsum is simply dummy \ntext of the printing and industry.",textAlign:TextAlign.justify,style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              SizedBox(height: 5,),
                              Text("Enjoy Nature by yourself.",style: TextStyle(
                                  fontSize: 12,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),)
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("21 Post",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                          Text("321 Followers",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                          Text("4 Comments",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),

                        ],
                      )
                    ],
                  )
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://www.photocase.com/photos/1457447-studio-shot-of-businessman-drinking-face-sports-photocase-stock-photo-large.jpeg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tim David",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                        SizedBox(height: 5,),
                        Text("3 min ago",style: TextStyle(
                            fontSize: 12,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  Spacer(),
                  Text("See All",style: TextStyle(
                      fontSize: 14,

                      //fontWeight: FontWeight.bold,
                      color: Colors.orange[300]
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Container(

                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(

                    children: [
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 130,
                              height: 115.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(Radius.circular(20)),

                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lorem Ipsum is simply dummy \ntext of the printing and industry.",textAlign:TextAlign.justify,style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                              SizedBox(height: 5,),
                              Text("Enjoy Nature by yourself.",style: TextStyle(
                                  fontSize: 12,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),)
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("21 Post",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                          Text("321 Followers",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                          Text("4 Comments",style: TextStyle(
                              fontSize: 12,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),

                        ],
                      )
                    ],
                  )
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            currentIndex = index;
          });
          _pageController.animateToPage(currentIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: currentIndex,
        iconSize: 30,

        barItems: [
          BarItem(
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            icon: Icons.favorite_border,
            title: 'Home',
          ),

          BarItem(
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
            icon: Icons.person,
            title: 'Cart',
          ),
          BarItem(
            activeColor: Colors.lightBlueAccent,
            inactiveColor: Colors.red,
            icon: Icons.dashboard,
            title: 'Account',
          ),
          /// Add more BarItem if you want
        ],
      ),

    );
  }
}
/*
Text('Add your story',style: TextStyle(
                              fontSize: 12,
                              color: Colors.black
                          ),),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xfff8f7f3),

                            child: CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage('https://www.seekpng.com/png/detail/60-604032_face-businessman-png-dummy-images-for-testimonials.png'),
                            ),
                          ),
 */