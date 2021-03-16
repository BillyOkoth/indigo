import 'package:flutter/material.dart';
import 'package:indigo/commons/my_info.dart';
import 'package:indigo/commons/opaque_image.dart';
import 'package:indigo/commons/profile_info_big_card.dart';
import 'package:indigo/commons/profile_info_card.dart';
import 'package:indigo/pages/super_likes_me_page.dart';
import 'package:indigo/styleguide/colors.dart';
import 'package:indigo/styleguide/text_style.dart';

class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(

                  children: [
                    OpaqueImage(
                   imageUrl:"assets/images/anne.jpeg"
                    ),
                    SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                              MyInfo()

                            ],
                          ),

                        ))

                  ],

                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New matches",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "264",
                            secondText: "All matches",
                            icon: Image.asset(
                              "assets/icons/checklist.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                          // ProfileInfoBigCard(
                          //   firstText: "42",
                          //   secondText: "Rematches",
                          //   icon: Icon(
                          //     Icons.refresh,
                          //     size: 32,
                          //     color: blueColor,
                          //   ),
                          // ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>SuperLikesMePage())
                      );
                    },

                    child: ProfileInfoBigCard(
                      firstText: "42",
                      secondText: "Super Likes",
                      icon: Icon(
                        Icons.favorite,
                        size:32,
                        color: blueColor,
                      ),
                    ),
                  )


                        ],
                      ),



                    ],
                  ),


                ),

              ),
            ],
          ),

          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left:16,
            right:16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
               ProfileInfoCard(
                 hasImage: true,
                 imagePath: "assets/icons/pulse.png",


               ),
                  SizedBox(
                    width:10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  )
                ],
              ),

            ),
          )

        ],
      ),
    );
  }
}
