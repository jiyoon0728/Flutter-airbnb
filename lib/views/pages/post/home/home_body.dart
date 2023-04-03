import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/views/pages/post/home/home_body_popular.dart';
import 'package:flutter/cupertino.dart';

import 'home_body_banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 화면이 새로 그려질 때 마다 아래 사이즈에 맞춰서 그려진다
    double bodyWidth = getBodyWidth(context);

    // 공간을 정할려면 Align을 sizedBox담아준다
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
