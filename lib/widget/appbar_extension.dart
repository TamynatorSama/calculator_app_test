import 'package:calculator_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarExtension extends StatelessWidget {
  const AppBarExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: _contentBuilder(
              title: "N13,000",
              backgroundColor: const Color(0xffFFB71D),
              subtitle: "Total Wallet Balance",
              btnColor: const Color(0xffFFF8E8),
              btnText: "Fund my wallet"),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 7,
          child: _contentBuilder(
              title: "23",
              backgroundColor: const Color(0xffFFFFFF),
              subtitle: "QuickPoints",
              btnColor: AppTheme.primatyColor,
              btnTextColor: Colors.white,
              btnText: "Buy more QuickPoints"),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 6,
          child: _contentBuilder(
              title: "Free",
              backgroundColor: const Color(0xffFFF8E8),
              subtitle: "Subscription Mode",
              btnTextColor: Colors.white,
              type: ContentType.Medal,
              btnText: "Upgrade to Premium"),
        ),
      ],
    );
  }
}

Widget _contentBuilder(
        {required String title,
        required String subtitle,
        required Color backgroundColor,
        Color? btnColor,
        Color btnTextColor = const Color(0xff8C6510),
        required String btnText,
        ContentType type = ContentType.text}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
                spreadRadius: -10,
                blurRadius: 16,
                color: Colors.black.withOpacity(0.8))
          ],
          color: backgroundColor),
      child: Column(children: [
        const Spacer(),
        Column(
            children: type == ContentType.Medal
                ? [
                    SvgPicture.asset("assets/svgs/medal.svg"),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontSize: 8, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      title,
                      style: AppTheme.titleTheme.copyWith(fontSize: 16),
                    ),
                  ]
                : [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        title,
                        style: AppTheme.titleTheme.copyWith(fontSize: 16),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontSize: 8, fontWeight: FontWeight.w400),
                    ),
                  ]),
        const Spacer(),
        _buildButtom(
            btnText: btnText,
            btnTextColor: btnTextColor,
            btnColor: btnColor,
            type: type),
        const SizedBox(height: 5),
      ]),
    );
Widget _buildButtom(
        {Color? btnColor,
        required String btnText,
        Color? btnTextColor,
        required ContentType type}) =>
    Container(
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      width: double.maxFinite,
      decoration: ShapeDecoration(
          gradient: type == ContentType.text
              ? null
              : const LinearGradient(
                  colors: [Color(0xffFFD800), Color(0xffFF6100)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.02, 0.5]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: type == ContentType.Medal ? null : btnColor),
      child: Text(
        btnText,
        style: AppTheme.titleTheme.copyWith(fontSize: 8, color: btnTextColor),
      ),
    );

enum ContentType {
  text,
  Medal;
}
