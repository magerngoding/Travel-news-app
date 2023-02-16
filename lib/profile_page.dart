// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tess/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighterWhiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.asset('assets/profile.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Siraj Hafizh',
                            style: kPoppinsBold.copyWith(
                              color: darkBlueColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Author & Writer',
                            style: kPoppinsBold.copyWith(
                              color: darkBlueColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: 42,
                          maxWidth: 130,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: blueColor,
                        ),
                        child: Center(
                            child: Text(
                          'Following',
                          style: kPoppinsMedium.copyWith(
                            color: whiteColor,
                            fontSize: 12,
                          ),
                        )),
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                style: kPoppinsMedium.copyWith(
                  color: greyColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27,
                  vertical: 29,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: darkBlueColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21K',
                            style: kPoppinsBold.copyWith(
                              color: whiteColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              color: whiteColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: lightBlueColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11K',
                            style: kPoppinsBold.copyWith(
                              color: whiteColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                              color: whiteColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: lightBlueColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40K',
                            style: kPoppinsBold.copyWith(
                              color: whiteColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              color: whiteColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
