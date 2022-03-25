import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task/widgets/button.dart';
import 'package:task/widgets/text.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../widgets/app_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../widgets/container.dart';
class Stadium extends StatefulWidget {
  const Stadium({Key? key}) : super(key: key);

  @override
  _StadiumState createState() => _StadiumState();
}

class _StadiumState extends State<Stadium> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: defaultAppBar(title: 'Stadium'),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            padding:  EdgeInsets.only(left: 5.h,bottom: 21.h),
            decoration: const  BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage('assets/packgroundstadium.png'), fit: BoxFit
                  .cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 5.h,bottom: 3.h),
                  child: defaultText(text: "El Yasmeen",fontSize: 25),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5.h,bottom: 2.5.h,right: 5.h),
                  child: Row(
                    children: [
                      circleContainer(color: Colors.white),

                      circleContainer(color: Colors.white),

                      circleContainer(color: Colors.white),

                      circleContainer(color: Colors.green),
                      const Spacer(),
                      defaultButton(text: 'Booking New', function: () {
                        print("success Booking ");
                      },
                          background:Colors.blue),


                    ],
                  ),
                ),



              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.25,
            maxChildSize: 0.85,
            minChildSize: 0.25,
            builder: (
                BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                  ),
                  color: Colors.white,
                ),
                  width: MediaQuery.of(context).size.width,

                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 2.5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: defaultText(text: '6 October City',textColor:
                                Colors.black,fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration:const  BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.black
                                        )
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.5.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.timer_outlined,color: Colors
                                      .green,),
                                  SizedBox(width: 0.5.h,),
                                  defaultText(text: '30 min',textColor:
                                  Colors.green,fontSize: 15)
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: Colors
                                      .green,),
                                  SizedBox(width: 0.5.h,),
                                  defaultText(text: 'Directions',textColor:
                                  Colors.green,fontSize: 15)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.5.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    defaultText(text: 'price',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                    defaultText(text: '180',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                    defaultText(text: '/hr',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                  ],
                                ),

                                VerticalDivider( thickness: 1,
                                  width: 5,
                                  color: Colors.grey,),

                                Column(
                                  children: [
                                    defaultText(text: 'Rating',textColor: Colors
                                        .black,fontSize: 15),

                                    SizedBox(height: 1.h,),
                                    defaultText(text: '5.5',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                    defaultText(text: 'start',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                  ],
                                ),
                                VerticalDivider( thickness: 1,
                                  width: 5,
                                  color: Colors.grey,),


                                Column(
                                  children: [
                                    defaultText(text: 'Available for',textColor:
                                    Colors
                                        .black,fontSize: 15),

                                    SizedBox(height: 1.h,),
                                    defaultText(text: '10',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                    defaultText(text: 'player',textColor: Colors
                                        .black,fontSize: 15),
                                    SizedBox(height: 1.h,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              defaultText(text: 'About',textColor: Colors
                                  .black,fontSize: 15,isUpperCase: true,
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Container(

                            child: defaultText(
                                text: '6 October city - 11 District - October Street - Next to October Mosque',
                                textColor: Colors.black,fontSize: 18,),

                          ),
                        ),
                        SizedBox(height: 2.5.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Container(

                            child: defaultText(
                                text: 'Sed tortor ante, vestibulum non risus id, porta imperdiet purus. Donec mattis eros sit amet tellus vehicula, vitae venenatis nulla ullamcorper.',
                                textColor: Colors.black,fontSize: 18,
                                ),

                          ),
                        ),
                        SizedBox(height: 1.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              defaultText(
                                text: 'Properties',
                                textColor: Colors.black,fontSize: 20,
                                isUpperCase: true,
                                fontWeight: FontWeight.bold
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              Image.asset('assets/signal.png'),
                              SizedBox(width: 1.h),
                              defaultText(
                                  text: 'Free high speed internet (wifi)',
                                  textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.h,
                              right: 4.5.h),
                          child: Row(
                            children: [

                              Icon(Icons.wine_bar_sharp,color: HexColor("#69C779"),),
                              SizedBox(width: 1.h),
                              defaultText(
                                text: 'Bar/Lounge',
                                textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.h,
                              right: 4.5.h),
                          child: Row(
                            children: [

                              Icon(Icons.restaurant_menu_sharp,
                                color: HexColor("#69C779"),),
                              SizedBox(width: 1.h),
                              defaultText(
                                text: 'Restaurant',
                                textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              Image.asset('assets/ball.png'),
                              SizedBox(width: 1.h),
                              defaultText(
                                text: 'Balls',
                                textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              Image.asset('assets/mosque.png'),
                              SizedBox(width: 1.h),
                              defaultText(
                                text: 'Wash & Praying Room',
                                textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.h,
                              right: 4.5.h),
                          child: Row(
                            children: [

                              Image.asset('assets/man.png'),
                              SizedBox(width: 1.h),
                              defaultText(
                                text: 'Dressing Room',
                                textColor: Colors.black,fontSize: 15,

                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 3.h,),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.5.h,
                              right: 4.5.h),
                          child: Row(
                            children: [
                              defaultText(
                                text: 'Rating',
                                fontWeight: FontWeight.bold,
                                isUpperCase: true,
                                textColor: Colors.black,fontSize: 20,

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                              padding:  EdgeInsets.only(left: 1.5.h),
                              child:  Padding(
                                padding:  EdgeInsets.only(left: 4.5.h,
                                    right: 4.5.h),
                                child: Container(
                                  padding: EdgeInsets.all(2.5.h),
                                  decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.only(topLeft: Radius.circular
                                      (25)),
                                    color:HexColor("#69C779"),
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(child: Image.asset
                                        ('assets/placeholder.jpg'),),

                                      SizedBox(width: 3.h,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          defaultText(
                                            text: 'Mostafa tarek',
                                            textColor: Colors.white,fontSize: 15,

                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              defaultText(
                                                text: '5',
                                                textColor: Colors.white,fontSize:
                                              15,
                                              ),

                                              SizedBox(width: 1.h,),
                                              RatingBar.builder(
                                                initialRating: 3.5,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                unratedColor: Colors.amber.withAlpha(50),
                                                itemCount: 5,
                                                itemSize: 25,
                                                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                itemBuilder: (context, _) =>
                                                    Icon(Icons.star, color: Colors.yellow),
                                                onRatingUpdate: (rating) {
                                                },
                                                updateOnDrag: true,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 2.h,),
                      ],
                    ),
                  )
              );
            },),

        ],
      ),
    );
  }
}
