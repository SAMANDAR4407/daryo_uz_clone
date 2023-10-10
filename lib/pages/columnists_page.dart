import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'news_detail_page.dart';

class ColumnistsPage extends StatefulWidget {
  const ColumnistsPage({super.key});

  @override
  State<ColumnistsPage> createState() => _ColumnistsPageState();
}

class _ColumnistsPageState extends State<ColumnistsPage> {
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
                width: 50,
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'O\'zbekistondagi 8 ta tuman soliq inspeksiyasiga yangi rahbarlar tayinlandi')));
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
                                  'O\'zbekistondagi 8 ta tuman soliq inspeksiyasiga yangi rahbarlar tayinlandi',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post13.png', fit: BoxFit.cover, width: 120),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('5 Noyabr, 13:20', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('36229', style: TextStyle(color: Colors.grey)),
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Britaniyaning yangi bosh vaziri Rishi Sunak aslida kim?')));
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
                                  'Britaniyaning yangi bosh vaziri Rishi Sunak aslida kim?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post3.png', fit: BoxFit.cover, width: 120),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('24 Oktyabr, 17:27', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('41632', style: TextStyle(color: Colors.grey)),
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Nega hijob masalasi Eron jamiyatida o\'lim bilan hjazolash darajasida o\'ta muhim?')));
              },
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/post8.png', fit: BoxFit.cover, width: double.infinity,),
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
                            'Nega hijob masalasi Eron jamiyatida o\'lim bilan hjazolash darajasida o\'ta muhim?',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('29 Sentyabr, 18:58', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('54652', style: TextStyle(color: Colors.grey)),
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Sud tizimiga xalqning ishonch darajasi qanday?')));
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
                                  'Sud tizimiga xalqning ishonch darajasi qanday?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/pod1.png', fit: BoxFit.cover, width: 120),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('12 Avgust, 11:33', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('13364', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200, width: 1),
                    color: Colors.blue.shade400
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/icons/telegram.svg'),
                    const SizedBox(width: 10),
                    const Text('Biz telegramda', style: TextStyle(fontSize: 15, color: Colors.white),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'O\'zbekiston va Qozog\'iston. Mural san\'ati haqida rassomlar nima deydi?')));
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
                            Container(height: 10, width: 3, color: Colors.pinkAccent,),
                            const SizedBox(width: 10),
                            const Text('SAYOHAT', style: TextStyle(color: Colors.grey)),
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
                                  'O\'zbekiston va Qozog\'iston. Mural san\'ati haqida rassomlar nima deydi?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post11.png', fit: BoxFit.cover, width: 120),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('30 Iyun, 18:43', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('59435', style: TextStyle(color: Colors.grey)),
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
