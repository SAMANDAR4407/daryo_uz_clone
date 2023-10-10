import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'news_detail_page.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1)
              ),
              child: const SizedBox(
                width: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Lotin'),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Buxoro shahriga yangi prokuror tayinlandi')));
              },
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: Row(
                          children: [
                            Container(height: 10, width: 3, color: Colors.blueAccent,),
                            const SizedBox(width: 10),
                            const Text('MAHALLIY', style: TextStyle(color: Colors.grey)),
                          ],
                        )
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Buxoro shahriga yangi prokuror tayinlandi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post11.png', fit: BoxFit.cover, width: 100),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        children: [
                          const Text('Bugun, 08:26', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('220', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1)
              ),
              child: const Center(child: Text('Kecha')),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Zelenskiy qish oldi Ukrainaga qanday qurollar kerakligini aytdi')));
              },
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/post13.png', fit: BoxFit.cover, width: double.infinity,),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: Row(
                          children: [
                            Container(height: 10, width: 3, color: Colors.lightBlueAccent,),
                            const SizedBox(width: 10),
                            const Text('DUNYO', style: TextStyle(color: Colors.grey)),
                          ],
                        )
                    ),
                    const Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text(
                            'Zelenskiy qish oldi Ukrainaga qanday qurollar kerakligini aytdi',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(17),
                      child: Row(
                        children: [
                          const Text('Kecha, 23:45', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('5310', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Qizg\'izistonda 12 yashar bola quturishdan vafot etdi')));
              },
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: Row(
                          children: [
                            Container(height: 10, width: 3, color: Colors.blueAccent,),
                            const SizedBox(width: 10),
                            const Text('QIZG\'IZISTON', style: TextStyle(color: Colors.grey)),
                          ],
                        )
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Qizg\'izistonda 12 yashar bola quturishdan vafot etdi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/pod1.png', fit: BoxFit.cover, width: 100),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        children: [
                          const Text('Kecha, 23:20', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('4543', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Ukraina prezidenti ofisi Zelenskiyni masxara qilgan Ilon Maskga javob qaytardi')));
              },
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/pod3.png', fit: BoxFit.cover, width: double.infinity,),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: Row(
                          children: [
                            Container(height: 10, width: 3, color: Colors.lightBlueAccent,),
                            const SizedBox(width: 10),
                            const Text('DUNYO', style: TextStyle(color: Colors.grey)),
                          ],
                        )
                    ),
                    const Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text(
                            'Ukraina prezidenti ofisi Zelenskiyni masxara qilgan Ilon Maskga javob qaytardi',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        children: [
                          const Text('Kecha, 17:09', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('14672', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Ramzan Qodirovning 24 yoshli qizi bosh vazir o\'rinbosari bo\'ldi')));
              },
              child: Container(
                height: 190,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                        child: Row(
                          children: [
                            Container(height: 10, width: 3, color: Colors.lightBlueAccent,),
                            const SizedBox(width: 10),
                            const Text('DUNYO', style: TextStyle(color: Colors.grey)),
                          ],
                        )
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Ramzan Qodirovning 24 yoshli qizi bosh vazir o\'rinbosari bo\'ldi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post8.png', fit: BoxFit.cover, width: 100),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        children: [
                          const Text('Kecha, 23:10', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('5486', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
