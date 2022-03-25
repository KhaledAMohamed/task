import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:task/widgets/button.dart';

import '../../widgets/appBody/mainAppBar.dart';
import '../../widgets/text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Sizer(builder: (context, orientation, deviceType) {
      return   Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            defaultAppBody(
              text: 'Trtan',
              context : context,
              child: Text("sadas"),
              isLeading: true,),

            SizedBox(height: 2.5.h,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 2.5.h,right: 2.5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          defaultText(text: 'Top Rate',textColor: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),

                          const  Spacer(),
                          defaultButtonArrowIn(color: Colors.greenAccent)
                        ],
                      ),
                    ),
                    SizedBox(height: 1.5.h,),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding:  EdgeInsets.only(left: 1.5.h),
                          child: BuildCardCategory(),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Image.asset('assets/ads.png'),

                    SizedBox(height: 4.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 2.5.h,right: 2.5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          defaultText(text: 'Special stadiums',textColor: Colors
                              .black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),

                        ],
                      ),
                    ),
                    SizedBox(height: 1.5.h,),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding:  EdgeInsets.only(left: 1.5.h),
                          child: BuildCardStadiumCategory(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      );
    });
  }
}


class BuildCardCategory extends StatefulWidget {
  const BuildCardCategory({Key? key}) :super(key: key);
  @override
  State<BuildCardCategory> createState() => _BuildCardCategoryState();
}

class _BuildCardCategoryState extends State<BuildCardCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: const  BoxDecoration(
            borderRadius:  BorderRadius.all(Radius.circular(15)),
            image:  DecorationImage(
                image: AssetImage('assets/football.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 2.h,bottom: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    defaultText(text: 'Phulay Bay',fontSize: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 1.h),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 0.h),
              child: RatingBar.builder(
                initialRating: 5,
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
                  // setState(() {
                  //   _rating = rating;
                  // });
                },
                updateOnDrag: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 1.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            defaultText(text: '4.8 (512 Reviews)',textColor: Colors.green,
                fontSize: 15),

          ],
        ),
        SizedBox(height: 1.h,),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(right: 5.h),
              child: defaultText(text: 'October',textColor: Colors.black,fontWeight:
              FontWeight.bold,fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}




class BuildCardStadiumCategory extends StatefulWidget {
  const BuildCardStadiumCategory({Key? key}) :super(key: key);
  @override
  State<BuildCardStadiumCategory> createState() => _BuildCardStadiumState();
}

class _BuildCardStadiumState extends State<BuildCardStadiumCategory> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 2.h,right: 2.h,top: 0.5.h),
            child: Container(
              height: 140,
              width: 250,
              decoration: const  BoxDecoration(
                borderRadius:  BorderRadius.all(Radius.circular(15)),
                image:  DecorationImage(
                    image: AssetImage('assets/football.jpg'), fit: BoxFit.cover),
              ),

            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding:  EdgeInsets.only(left: 2.5.h,right: 2.5.h),
            child: defaultText(text: 'sport Al arab',textColor: Colors.black,
                fontSize: 18),
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 17.h),
                child: RatingBar.builder(
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
              ),
            ],
          ),
          Divider(color: Colors.grey,),
          SizedBox(
            width: 250,
            child: Padding(
              padding:  EdgeInsets.only(left: 2.5.h,right: 2.5.h),
              child: defaultText(
                  text: '6 October city - 11 District - October Street - Next to October Mosque',
                  textColor: Colors.black,
                  textAlign: TextAlign.justify,

                  fontSize: 12),
            ),
          ),

        ],
      ),
    );
  }
}

