import 'package:congobonmarche/utils/style_file.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../page_routes/routes.dart';
import '../utils/colors.dart';
import '../utils/font_size.dart';
import '../utils/responsive_screen.dart';
import '../utils/text_widget.dart';
import '../utils/webviewscreen.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  var categoryName = "À propos de CongoBonMarche";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorPrimary,
          centerTitle: true,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: TextView(
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
            font_size: isMobile(context)
                ? MyFontSize().normalTextSizeMobile
                : MyFontSize().normalTextSizeTablet,
            fontColor: colorWhite,
            text: categoryName,
            textStyle: Theme.of(context).textTheme.bodyText1!,
            softWrap: true,
          ),
        ),


        body: WebViewScreensShow(
            url: "https://www.congobonmarche.com/page/qui-sommes-nous")

    );
  }
}
