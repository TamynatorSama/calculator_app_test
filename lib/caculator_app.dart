import 'package:calculator_app/utils/app_theme.dart';
import 'package:calculator_app/widget/appbar_extension.dart';
import 'package:calculator_app/widget/bottom_navBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalculatorApp extends StatelessWidget {
  final List<ListtingModel> listingModel = const [
    ListtingModel(
        bagroundColor: Color(0xffECB0CE),
        imagePath: "assets/image/math.png",
        title: "Mathematics Calculator"),
    ListtingModel(
        bagroundColor: Color(0xffCAFCB1),
        imagePath: "assets/image/physics.png",
        title: "Physics Calculator"),
    ListtingModel(
        bagroundColor: Color(0xffC6DDFF),
        subtitle:
            "Snap an equation from your notebook and get real time solutions for them.",
        imagePath: "assets/image/snap.png",
        title: "Snap and Solve"),
    ListtingModel(
        bagroundColor: Color(0xffFCC0C0),
        imagePath: "assets/image/stat.png",
        title: "Statistics Calculator"),
    ListtingModel(
        bagroundColor: Color(0xffF0D5E8),
        imagePath: "assets/image/unit.png",
        title: "Unit Converter"),
    ListtingModel(
        bagroundColor: Color(0xffB0E5DB),
        imagePath: "assets/image/chem.png",
        title: "Chemistry Calculator"),
    ListtingModel(
        bagroundColor: Color(0xffFFE9B9),
        subtitle: "Learn science topics, demystified by our seasoned tutors.",
        imagePath: "assets/image/learn.png",
        title: "Learn \nScience "),
    ListtingModel(
        bagroundColor: Color(0xffFFE9B9),
        subtitle:
            "Instant CGPA Calculator for students in higher institutions.",
        imagePath: "assets/image/cgpa.png",
        title: "CGPA Calculator"),
    ListtingModel(
        bagroundColor: Color(0xffFFE9B9),
        subtitle:
            "Get your assignments and problems solved in few minutes by an expert tutor in the subject. ",
        imagePath: "assets/image/get_tut.png",
        title: "Get live help from Tutors"),
    ListtingModel(
        bagroundColor: Color(0xffB0E5DB),
        subtitle:
            "Connect with other science geniuses like you and learn as much as you can.",
        imagePath: "assets/image/community.png",
        title: "Join our Community"),
  ];

  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      // appBar: AppBar(

      //   backgroundColor: AppTheme.primatyColor,
      //   leadingWidth: 70,
      //   leading: Container(
      //       padding: const EdgeInsets.all(6),
      //       margin: const EdgeInsets.only(left: 12,bottom: 1,top: 1),
      //       child: _buildDraweBtn()),
      //   centerTitle: true,
      // title: const Text(
      //   "QuickSolver",
      //   style: TextStyle(
      //       fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20),
      // ),
      //   actions: [

      //   ],
      //   flexibleSpace: const PreferredSize(preferredSize: Size(double.maxFinite,120), child:AppBarExtension()),
      // ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.paddingOf(context).top + 10,
                left: 15,
                right: 15),
            decoration: BoxDecoration(
                color: AppTheme.primatyColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDraweBtn(),
                    const Text(
                      "QuickSolver",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/Calculator.svg",
                          width: 35,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 20 - 2,
                            backgroundColor: AppTheme.primatyColor,
                            child: const CircleAvatar(
                              radius: 20 - 4,
                              backgroundImage:
                                  AssetImage("assets/image/avatar.png"),
                              // child: ,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const AppBarExtension(),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: Column(
              children: [
                
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        children: List.generate(listingModel.length,
                            (index) => buildListingHolder(model: listingModel[index])),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
          // Expanded(child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)=>buildListingHolder()))
        ],
      ),
    );
  }
}

Widget _buildDraweBtn() {
  double size = 40;
  return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(3),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(5))),
      child: Wrap(
        runSpacing: 4,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: List.generate(
            3,
            (index) => Container(
                  height: 3,
                  width: index == 1 ? size : size / 2,
                  decoration: const ShapeDecoration(
                      shape: StadiumBorder(), color: Colors.white),
                )),
      ));
}

Widget buildListingHolder({required ListtingModel model}) => Container(
      width: double.maxFinite,
      // constraints: M,
      decoration: ShapeDecoration(
          color: model.bagroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  model.title,
                  style: AppTheme.titleTheme,
                ),
                if (model.subtitle != null) ...[
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    model.subtitle!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6F6F6F),
                        fontSize: 10),
                  )
                ]
              ],
            ),
          ),
          Image.asset(model.imagePath),
        ],
      ),
    );

class ListtingModel {
  final String title;
  final String? subtitle;
  final String imagePath;
  final Color bagroundColor;

  const ListtingModel(
      {required this.bagroundColor,
      required this.imagePath,
      required this.title,
      this.subtitle});
}
