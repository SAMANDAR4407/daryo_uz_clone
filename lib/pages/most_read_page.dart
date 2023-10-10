import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'news_detail_page.dart';

class MostReadPage extends StatelessWidget {
  const MostReadPage({super.key});

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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'O\'zbekistonliklar Buyuk Britaniyaga ishga taklif qilinmoqda. Maosh - yiliga 30 ming dollardan ortiq')));
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
                                  'O\'zbekistonliklar Buyuk Britaniyaga ishga taklif qilinmoqda. Maosh - yiliga 30 ming dollardan ortiq',
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
                          const Text('Kecha, 16:42', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('52205', style: TextStyle(color: Colors.grey)),
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Prigojinning vasiyatnomasi e\'lon qiindi (foto)')));
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
                                  'Prigojinning vasiyatnomasi e\'lon qiindi (foto)',
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
                          const Text('Kecha, 17:27', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('32918', style: TextStyle(color: Colors.grey)),
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
                    Image.asset('assets/images/post11.png', fit: BoxFit.cover, width: double.infinity,),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'O\'zbekiston va Qatar yetakchilari ikki tomonlama sheriklikni sifat jihatidan yangi darajaga olib chiqishga kelishdi')));
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
                                  'O\'zbekiston va Qatar yetakchilari ikki tomonlama sheriklikni sifat jihatidan yangi darajaga olib chiqishga kelishdi',
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
                          const Text('Kecha, 17:04', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('6417', style: TextStyle(color: Colors.grey)),
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
                Navigator.push(context, CupertinoPageRoute(builder: (context) => NewsDetailPage(title: 'Prigojinning vasiyatnomasi e\'lon qiindi (foto)')));
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
                                  'Prigojinning vasiyatnomasi e\'lon qiindi (foto)',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset('assets/images/post8.png', fit: BoxFit.cover, width: 120),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Kecha, 17:27', style: TextStyle(color: Colors.grey)),
                          const Expanded(child: SizedBox()),
                          SvgPicture.asset('assets/images/icons/views.svg'),
                          const SizedBox(width: 5),
                          const Text('16691', style: TextStyle(color: Colors.grey)),
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
