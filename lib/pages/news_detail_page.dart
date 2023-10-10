import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailPage extends StatelessWidget {
  NewsDetailPage({super.key, required this.title});
  final String title;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey[100],
        elevation: 1,
        title: SizedBox(width: 220,child: Text(title, style: const TextStyle(overflow: TextOverflow.ellipsis, fontSize: 18, fontWeight: FontWeight.w500))),
        actions: [
          GestureDetector(onTap: (){_scaffoldKey.currentState?.openEndDrawer();},child: SvgPicture.asset('assets/images/icons/menu.svg')),
          const SizedBox(width: 10)
        ],
      ),
      endDrawer: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              AppBar(
                elevation: 1,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                shadowColor: Colors.grey[100],
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Material(
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: SvgPicture.asset('assets/images/icons/settings.svg'),
                      ),
                    ),
                  ),
                ),
                title: Text('SOZLAMALAR', style: TextStyle(color: Colors.grey.shade400, fontSize: 15)),
                actions: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.close_rounded)),
                  const SizedBox(width: 10)
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('SO\'NGGI YANGILIKLAR', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            SizedBox(width: 20,child: SvgPicture.asset('assets/images/bottom_nav_bar/latest.svg', color: Colors.grey,))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('ASOSIY YANGILIKLAR', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            SizedBox(width: 20,child: SvgPicture.asset('assets/images/bottom_nav_bar/main.svg', color: Colors.grey,))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('ENG KO\'P O\'QILGAN', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            SizedBox(width: 20,child: SvgPicture.asset('assets/images/bottom_nav_bar/mostviewed.svg', color: Colors.grey,))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('KOLUMNISTLAR', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            SizedBox(width: 20,child: SvgPicture.asset('assets/images/bottom_nav_bar/columnists.svg', color: Colors.grey,))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('MULTIMEDIA', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            SizedBox(width: 20,child: SvgPicture.asset('assets/images/bottom_nav_bar/media.svg', color: Colors.grey,))
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300,),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('MAHALLIY', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.blueAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('DUNYO', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.lightBlueAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('MADANIYAT', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.yellowAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('LAYFSTAYL', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.pinkAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('SPORT', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.redAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('PUL', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.orangeAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('MARKAZIY OSIYO', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const SizedBox(width: 5),
                            Container(width: 3,height: 10,color: Colors.pinkAccent,)
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300,),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('BILDIRISHNOMALARNI SOZLASH', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            SizedBox(width: 30,child: SvgPicture.asset('assets/images/icons/notification.svg'))
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300,),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('DARYO', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('REKLAMA', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('SOCIAL', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('TELEGRAM', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                            const Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(color: Colors.grey.shade300),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('USD', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13, color: Colors.grey)),
                                Row(
                                  children: [
                                    Text('12200.12', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                                    const SizedBox(width: 3),
                                    SvgPicture.asset('assets/images/icons/green_up.svg')
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('RUB', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13, color: Colors.grey)),
                                Row(
                                  children: [
                                    Text('125.4', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                                    const SizedBox(width: 3),
                                    SvgPicture.asset('assets/images/icons/red_down.svg')
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('EUR', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13, color: Colors.grey)),
                                Row(
                                  children: [
                                    Text('12949.21', style: GoogleFonts.ibmPlexSansArabic().copyWith(fontSize: 13)),
                                    const SizedBox(width: 3),
                                    SvgPicture.asset('assets/images/icons/green_up.svg')
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 56,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, offset: Offset(0, -1), blurStyle: BlurStyle.outer, blurRadius: 5)
                      ]
                  )
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Material(
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200)
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                                child: Row(
                                  children: [
                                    Container(height: 10, width: 3, color: Colors.yellowAccent,),
                                    const SizedBox(width: 10),
                                    const Text('KINO', style: TextStyle(color: Colors.grey)),
                                  ],
                                )
                            ),
                            Divider(indent: 17, endIndent: 17,color: Colors.grey.shade300,height: 1,),
                            Padding(
                              padding: const EdgeInsets.all(17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Kecha, 10:32', style: TextStyle(color: Colors.grey)),
                                  const Expanded(child: SizedBox()),
                                  SvgPicture.asset('assets/images/icons/views.svg'),
                                  const SizedBox(width: 5),
                                  const Text('11994', style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17),
                              child: Text(
                                'Sami Naseri: “Ssenariy maʼqul kelsa, ‘Taksi’ning 6-qismida albatta suratga tushaman”',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(17),
                              child: Text(
                                '“Ipak yo‘li durdonasi” XV Toshkent Xalqaro kinofestivali doirasida “Taksi” filmida bosh rolni (Daniel) ijro etgan taniqli aktyor Sami Naseri ishtirokida 1-oktyabr kuni “Renessance” kinochilar uyida yosh va bo‘lajak kinoijodkorlar uchun mahorat darsi bo‘lib o‘tdi. Bu haqda Toshkent xalqaro kinofestivali Telegram kanalida xabar berildi.',
                                style: TextStyle(height: 1.6),
                              ),
                            ),
                            Image.asset('assets/images/daniel.png'),
                            const SizedBox(height: 30),
                            const Padding(
                              padding: EdgeInsets.all(17),
                              child: Text(
                                '''
      Bundan tashqari Sami Naseri siyosatga qiziqmasligini va agar beriladigan taklif yoqsa, davlat tanlamasdan rol ijro etishini aytib, quyidagi fikrlarni alohida taʼkidlab otdi: “Men uchun siyosatni qizig‘i yo‘q, men shunchaki oddiy insonlar uchun kinoda suratga tushaman. Masalan hozir Fransiya va Jazoir o‘rtasida hamkorlikda suratga olinayotgan mustamlakachilik haqidagi bir katta filmda rol o‘ynayapman”. 
      
      Shuningdek u “Taksi” filmida rol ijro etgan qolgan aktyorlar bilan tadbirlarda va boshqa marosimlarda uchrashib turishini, Emiliyen rolini ijro etgan Frederik Diefental bilan esa doimo aloqada ekanligi aytib berdi. Bu ikkilik hozir o‘z prodyuserlik firmasini yuritadi va bir-biridan qiziqarli filmlar ustida ishlashmoqda. 
      
      Undan nega “Taksi” filmining 5-qismida o‘ynamagani haqida savol so‘ralganda, u shunday javob berdi: “Bu qismning ssenariysi menga ham do‘stim Emiliyenga ham maʼqul kelmadi, keyin u yerda umuman boshqa jamoa ishladi va bizga umuman u muhit yoqmadi. Ammo eski jamoadoshlarimiz (rejissor, aktyorlar, prodyuser, bastakor) ishtirok etsa va film falsafasi bizga yoqsa, men ham Frederik ham 6-qismda albatta rol o‘ynaymiz”. 
                                ''',
                                style: TextStyle(height: 1.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        height: 56,
                        color: Colors.grey.shade200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Telegram');
                              },
                              child: Container(
                                width:42,
                                height:42,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey.shade600,width: 1)
                                ),
                                child: SvgPicture.asset('assets/images/icons/telegram.svg', color: Colors.grey.shade600,),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Facebook');
                              },
                              child: Container(
                                width:42,
                                height:42,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey.shade600,width: 1)
                                ),
                                child: SvgPicture.asset('assets/images/icons/facebook.svg', color: Colors.grey.shade600,),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Instagram');
                              },
                              child: Container(
                                width:42,
                                height:42,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey.shade600,width: 1)
                                ),
                                child: SvgPicture.asset('assets/images/icons/instagram.svg', color: Colors.grey.shade600,),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Ok.ru');
                              },
                              child: Container(
                                width:42,
                                height:42,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey.shade600,width: 1)
                                ),
                                child: SvgPicture.asset('assets/images/icons/ok.svg', color: Colors.grey.shade600,),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Twitter');
                              },
                              child: Container(
                                width:42,
                                height:42,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(color: Colors.grey.shade600,width: 1)
                                ),
                                child: SvgPicture.asset('assets/images/icons/twitter.svg', color: Colors.grey.shade600,),
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )
          ),
          Container(
            height: 56,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, offset: Offset(0, -1), blurStyle: BlurStyle.outer, blurRadius: 8)
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'Izohlar');
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_outlined, color: Colors.grey,),
                      Text('Izohlar(0)', style: TextStyle(color: Colors.grey, fontSize: 13),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'TELEGRAM');
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.paperplane, color: Colors.grey,),
                      Text('TELEGRAM', style: TextStyle(color: Colors.grey, fontSize: 13),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'Ulashing');
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share, color: Colors.grey,),
                      Text('Ulashing', style: TextStyle(color: Colors.grey, fontSize: 13),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
