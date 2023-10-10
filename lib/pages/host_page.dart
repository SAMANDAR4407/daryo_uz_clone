import 'package:daryo_uz_clone/pages/columnists_page.dart';
import 'package:daryo_uz_clone/pages/latest_page.dart';
import 'package:daryo_uz_clone/pages/main_page.dart';
import 'package:daryo_uz_clone/pages/most_read_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/bottom_nav_item_model.dart';

class HostPage extends StatefulWidget {
  const HostPage({super.key});

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final controller = TextEditingController();
  var pageIndex = 1;
  var isDrawerOpen = false;
  var isEmpty = true;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final pages = [
    const MainPage(),
    const LatestPage(),
    const MostReadPage(),
    const ColumnistsPage(),
    const MostReadPage(),
    const ColumnistsPage(),
    const MostReadPage(),
    const ColumnistsPage(),
    const MostReadPage(),
    const ColumnistsPage(),
    const MostReadPage(),
    const ColumnistsPage()
  ];

  final _bottomItems = [
    BottomNavItemModel(title: 'Asosiy', icon: 'assets/images/bottom_nav_bar/main.svg'),
    BottomNavItemModel(title: 'So`nggi', icon: 'assets/images/bottom_nav_bar/latest.svg'),
    BottomNavItemModel(title: 'Eng ko\'p o\'qilgan', icon: 'assets/images/bottom_nav_bar/mostviewed.svg'),
    BottomNavItemModel(title: 'Kolumnistlar', icon: 'assets/images/bottom_nav_bar/columnists.svg'),
    BottomNavItemModel(title: 'Multimedia', icon: 'assets/images/bottom_nav_bar/media.svg'),
    BottomNavItemModel(title: 'Mahalliy', icon: 'assets/images/bottom_nav_bar/local.svg', color: Colors.blueAccent),
    BottomNavItemModel(title: 'Dunyo', icon: 'assets/images/bottom_nav_bar/world.svg', color: Colors.lightBlueAccent),
    BottomNavItemModel(title: 'Madaniyat', icon: 'assets/images/bottom_nav_bar/culture.svg', color: Colors.yellowAccent),
    BottomNavItemModel(title: 'Layfstayl', icon: 'assets/images/bottom_nav_bar/lifestyle.svg', color: Colors.pinkAccent),
    BottomNavItemModel(title: 'Sport', icon: 'assets/images/bottom_nav_bar/sport.svg', color: Colors.redAccent),
    BottomNavItemModel(title: 'Pul', icon: 'assets/images/bottom_nav_bar/business.svg', color: Colors.orangeAccent),
    BottomNavItemModel(title: 'Markaziy Osiyo', icon: 'assets/images/bottom_nav_bar/world.svg', color: Colors.pinkAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey[100],
        elevation: 1,
        leading: GestureDetector(
          onTap: (){
            showDialog(context: context, useSafeArea: false, builder: (context) {
                return Scaffold(
                  backgroundColor: Colors.black.withAlpha(200),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Expanded(child: SizedBox()),
                              IconButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close_rounded, color: Colors.grey[200])
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 80,
                            child: Center(child: Text('Nimani qidiramiz?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[600]),)),
                          ),
                          TextField(
                            onChanged: (value){
                              if(value.isNotEmpty){
                                setState(() {
                                  isEmpty = false;
                                });
                              }
                            },
                            controller: controller,
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                              controller.clear();
                            },
                            child: Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width/3,
                                  height: 60,
                                  child: const Center(child: Text('YUBORISH', style: TextStyle(fontSize: 12, color: Colors.black)),),
                                ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset('assets/images/icons/search.svg'),
          ),
        ),
        centerTitle: true,
        title: SvgPicture.asset('assets/images/logo.svg',height: 30,),
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
          Expanded(child: pages[pageIndex]),
          const Divider(color: Colors.blueAccent,thickness: 2, height: 1),
          SizedBox(
            height: 56,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              scrollDirection: Axis.horizontal,
              itemCount: _bottomItems.length,
              itemBuilder: (context, index) {
                final model = _bottomItems[index];
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SvgPicture.asset(model.icon,color: pageIndex == index? Colors.blue: Colors.black),
                        model.color!=null
                            ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(width: 2, height: 8, color: model.color,),
                                const SizedBox(width: 5),
                                Text(model.title, style: GoogleFonts.ibmPlexSansArabic().copyWith(height: 1,color: pageIndex == index? Colors.blue: Colors.black, fontSize: 12),)
                              ],
                            )
                            : Text(model.title, style: GoogleFonts.ibmPlexSansArabic().copyWith(height: 1,color: pageIndex == index? Colors.blue: Colors.black, fontSize: 12),)
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
