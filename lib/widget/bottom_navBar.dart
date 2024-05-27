import 'package:calculator_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.paddingOf(context).bottom,
            // top: 5,
            left: 15,
            right: 15),
        decoration: BoxDecoration(
            border: Border(
                top:
                    BorderSide(width: 2, color: Colors.grey.withOpacity(0.3)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomIcon(
                title: "Home",
                isSelected: true,
                icon: "assets/svgs/Home_light.svg"),
            _buildBottomIcon(
                title: "Calculator",
                // isSelected: true,
                icon: "assets/svgs/new_calc.svg"),
            _buildBottomIcon(
                title: "Solutions",
                // isSelected: true,
                icon: "assets/svgs/grid-edit.svg"),
            _buildBottomIcon(
                title: "Learn",
                // isSelected: true,
                icon: "assets/svgs/Book_open.svg"),
            _buildBottomIcon(
                title: "Community",
                // isSelected: true,
                icon: "assets/svgs/people.svg"),
          ],
        ),
      ),
    );
  }
}

Widget _buildBottomIcon(
    {required String title, bool isSelected = false, required String icon}) {
  return IntrinsicHeight(
    child: TextButton(
      onPressed: () {},
      child: Container(
        constraints: BoxConstraints(minWidth: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon, width: 28, height: 28,
              // colorFilter: ColorFilter.mode(isSelectedAppTheme.primatyColor:const Color(0xff6F6F6F), BlendMode.srcIn),
            ),
            Text(
              title,
              style: TextStyle(
                  color: isSelected
                      ? AppTheme.primatyColor
                      : const Color(0xff6F6F6F),
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
            // if(isSelected)
            const SizedBox(height: 5),
            Container(
              height: 3,
              width: 40,
              color: isSelected? AppTheme.primatyColor:null,
            )
          ],
        ),
      ),
    ),
  );
}
