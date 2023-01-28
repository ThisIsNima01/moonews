import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:news/constants/constants.dart';

class SubtitleScreen extends StatefulWidget {
  const SubtitleScreen({super.key});

  @override
  State<SubtitleScreen> createState() => _SubtitleScreenState();
}

class _SubtitleScreenState extends State<SubtitleScreen> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0,
        title: Image.asset('assets/images/appbar.png'),
        centerTitle: true,
        leadingWidth: double.infinity,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              Image.asset('assets/images/search-normal.png'),
              SizedBox(
                width: 28,
              ),
              Image.asset('assets/images/filter-edit.png'),
            ],
          ),
        ),
      ),
      body: Stack(
        // alignment: AlignmentDirectional.topCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  child: Image.asset('assets/images/banner-1.png'),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 36,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      var itemNames = [
                        'همه',
                        'جهان',
                        'تکنولوژی',
                        'ورزش',
                        'جالب',
                        'علم و دانش',
                      ];
                      return _getCategoryItem(itemNames[index], index);
                    }),
                    reverse: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  top: 24,
                  bottom: 20,
                ),
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
                        'خبرگذاری ها',
                        style: TextStyle(
                          color: backColor,
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
                  height: 160,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final dataList = [
                        ['زومیت', 'zoomit'],
                        ['دیجیاتو', 'digiato'],
                        ['ورزش سه', 'varzesh3'],
                      ];
                      return _getNewserBox(
                          dataList[index][0], dataList[index][1], index);
                    },
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  top: 32,
                  bottom: 24,
                ),
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
                        'پیشنهاد سردبیر',
                        style: TextStyle(
                          color: backColor,
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
                  height: 296,
                  child: ListView.builder(
                    itemBuilder: (context, index) => _getSuggestedBox(),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 48,
              child: Marquee(
                text:
                    'برانکو تکذیب کرد/ نه با عمان فسخ کردم، نه با ایران مذاکره داشتم...   بی‌نظمی شدید در مراسم رونمایی از کاپ جام جهانی و قهر نماینده فیفا',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SB',
                  fontSize: 16,
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff313666),
              ),
            ),
          )
        ],
      ),
    );
  }

  Align _getSuggestedBox() {
    return Align(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: 280,
        height: 294,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/suggested-1.png',
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xff313666).withOpacity(.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'علمی پزشکی',
                        style: TextStyle(
                          color: backColor,
                          fontFamily: 'SB',
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Align _getNewserBox(name, image, index) {
    return Align(
      child: Container(
        margin: EdgeInsets.only(
          right: index == 0 ? 24 : 20,
          left: index == 2 ? 24 : 0,
        ),
        height: 160,
        width: 133,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Image.asset('assets/images/$image-logo.png'),
            SizedBox(
              height: 16,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                color: backColor,
                fontFamily: 'SM',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: mainColor.withOpacity(.25),
              ),
              child: Center(
                child: Text(
                  'دنبال کردن',
                  style: TextStyle(
                    color: backColor,
                    fontFamily: 'SB',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCategoryItem(String labelName, index) => GestureDetector(
        onTap: (() {
          setState(() {
            _selectedCategoryIndex = index;
          });
        }),
        child: Container(
          margin: EdgeInsets.only(
            right: index == 0 ? 24 : 16,
            left: index == 5 ? 24 : 0,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: _selectedCategoryIndex == index ? Color(0xff313666) : null,
          ),
          child: Center(
            child: Text(
              labelName,
              style: TextStyle(
                fontFamily: 'SB',
                color: backColor,
                fontSize: 12,
              ),
            ),
          ),
        ),
      );
}
