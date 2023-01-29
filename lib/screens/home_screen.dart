import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/constants/constants.dart';

enum TabNames {
  RECOMMENDED,
  FOLLOWING,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabNames _selectedTab = TabNames.RECOMMENDED;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        surfaceTintColor: mainBlack,
        leading: Image.asset('assets/images/notification-status.png'),
        centerTitle: true,
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        title: Image.asset('assets/images/appbar.png'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _tabs(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مشاهده بیشتر',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SM',
                    ),
                  ),
                  Text(
                    'خبر های داغ',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'SM',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 306,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _newsBox(),
                itemCount: 6,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 32),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مشاهده بیشتر',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SM',
                    ),
                  ),
                  Text(
                    'خبر هایی که علاقه داری',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'SM',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _getVerticalItem(),
              childCount: 6,
            ),
          )
        ],
      ),
    );
  }

  Align _getVerticalItem() {
    return Align(
      child: Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 22,
        ),
        // width: 380,
        height: 132,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 14, top: 16),
                child: Column(
                  children: [
                    Text(
                      'سـاعـت هوشـمـنـد گــارمـیـن بـا عمر باتری ۱۱ روزه معرفی شد',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                        fontFamily: 'SM',
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'گارمین در رویداد IFA ۲۰۲۲ ساعت هوشمند Venu Sq 2 و ردیاب سلامت کودکان موسوم به Black Panther Vivofit Jr را معرفی کرد.',
                      softWrap: true,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 8,
                        color: mainGray,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SM',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/short-menu.png'),
                        Spacer(),
                        Text(
                          'خبرگذاری زومیت',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 8,
                            fontFamily: 'SM',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset('assets/images/zoomit.png')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Image.asset('assets/images/vertical-image.png'),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      width: 70,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0xff313666).withOpacity(.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'ورزشی',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'SM',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }

  Align _newsBox() {
    return Align(
      child: Container(
        margin: EdgeInsets.only(right: 24, left: 20),
        height: 306,
        width: 280,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
                top: 4,
              ),
              child: SizedBox(
                height: 160,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/taremi_home.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Align(
                        child: Container(
                          width: 58,
                          height: 28,
                          decoration: BoxDecoration(
                            color: mainColor.withOpacity(.5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'ورزشی',
                              style: TextStyle(
                                color: textColor,
                                fontFamily: 'SM',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'دقیقه قبل',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 12,
                          color: mainGray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '۵',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 12,
                          color: mainGray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'پیشنهاد مونیوز',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 12,
                      color: mainGray,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Image.asset(
                    'assets/images/flash-circle.png',
                    fit: BoxFit.cover,
                    width: 20,
                    height: 16,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 26,
                top: 10,
              ),
              child: Text(
                "پــاسـخ منـفـی پــورتـــو بـه چلـسـی بـرای جذب طارمی با طعم تهدید",
                textAlign: TextAlign.end,
                style: TextStyle(
                  height: 1.6,
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SM',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 16,
                left: 16,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/short-menu.png'),
                  Spacer(),
                  Text(
                    'خبرگذاری آخرین خبر',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 10,
                      fontFamily: 'SM',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Image.asset('assets/images/khabar-logo.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _tabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Container(
        width: 380,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTab = TabNames.FOLLOWING;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 166,
                height: 36,
                decoration: BoxDecoration(
                  color: _selectedTab == TabNames.FOLLOWING ? mainColor : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    'دنبال میکنید',
                    style: TextStyle(
                      color: _selectedTab == TabNames.FOLLOWING
                          ? Colors.white
                          : mainGray,
                      fontFamily: 'SB',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTab = TabNames.RECOMMENDED;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 166,
                height: 36,
                decoration: BoxDecoration(
                  color:
                      _selectedTab == TabNames.RECOMMENDED ? mainColor : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    'پیشنهادی',
                    style: TextStyle(
                      color: _selectedTab == TabNames.RECOMMENDED
                          ? Colors.white
                          : mainGray,
                      fontFamily: 'SB',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
