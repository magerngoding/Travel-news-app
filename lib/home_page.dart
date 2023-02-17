// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tess/news_detail_page.dart';

import './shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lighterWhiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: lightBlueColor,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Wellcome Back!',
                      style: kPoppinsBold.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Monday 3 October',
                      style: kPoppinsRegular.copyWith(
                        color: greyColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: darkBlueColor.withOpacity(0.051),
                    offset: Offset(00, 3.0),
                    blurRadius: 24,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: kPoppinsRegular.copyWith(
                        color: blueColor,
                        fontSize: 12,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 13),
                          hintText: 'Search for article...',
                          border: kBorder,
                          errorBorder: kBorder,
                          disabledBorder: kBorder,
                          focusedBorder: kBorder,
                          focusedErrorBorder: kBorder,
                          hintStyle: kPoppinsRegular.copyWith(
                            color: lightGreyColor,
                            fontSize: 12,
                          )),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 14,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      '#Health',
                      style: kPoppinsMedium.copyWith(
                        color: greyColor,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 304,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(right: 12),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: darkBlueColor.withOpacity(0.051),
                          offset: Offset(00, 3.0),
                          blurRadius: 24,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsDetailPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/bali.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Flexible(
                          child: Text(
                            'Bali - Uniqure, unmatched There is no other place like Bali in this world.',
                            style: kPoppinsBold.copyWith(
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 19,
                                  backgroundColor: lightBlueColor,
                                  backgroundImage:
                                      AssetImage('assets/profile.jpg'),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Muhammad Siraj Hafizh',
                                      style: kPoppinsSemiBold.copyWith(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      '31 Feb 2023',
                                      style: kPoppinsRegular.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                color: lightWhiteColor,
                              ),
                              child: Icon(
                                Icons.send,
                                color: lightBlueColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Short for you',
                  style: kPoppinsBold.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'View all',
                  style: kPoppinsMedium.copyWith(
                    fontSize: 12,
                    color: blueColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            SizedBox(
              height: 88,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 88,
                    width: 208,
                    padding: EdgeInsets.all(9),
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      boxShadow: [
                        BoxShadow(
                          color: darkBlueColor.withOpacity(0.051),
                          offset: Offset(00, 3.0),
                          blurRadius: 24,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            image: DecorationImage(
                              image: AssetImage('assets/img1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Icon(
                            Icons.play_circle_outline_rounded,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Top Trending Island in 2022',
                              style: kPoppinsSemiBold.copyWith(
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '40,999',
                                  style: kPoppinsMedium.copyWith(
                                    color: greyColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 1 ? Icon(Icons.home) : Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(Icons.bookmark)
                : Icon(Icons.bookmark),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(Icons.notifications_none_outlined)
                : Icon(Icons.notifications_none_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Icon(Icons.person_outline_outlined)
                : Icon(Icons.person_outline_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
