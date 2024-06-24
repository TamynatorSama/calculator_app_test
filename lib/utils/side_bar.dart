import 'package:google_fonts/google_fonts.dart';
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: double.maxFinite,
            margin: const EdgeInsets.only(left: 24),
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 22,
                      spreadRadius: 11,
                      color: Colors.black.withOpacity(0.2))
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: SingleChildScrollView(
                child: Padding(
                padding:const EdgeInsets.symmetric(horizontal:24),child:Column(children: [
              Row(children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text("Pado Lebari",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xff636363))),
                  Text("padosky34@gmail.com",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 12,color: Color(0xff636363))),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Color(0xff0A7212)),
                    child: Text("View Profile",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.white)),
                  )
                ])
              ]),
                  const SizedBox(height:14),
                  Divider(
                  color:const Color(0xffEDEDED),
                    
                  ),
                  const SizedBox(height:20),
                  Wrap(
                    runSpacing: 24,
                  children:[
                    _buildRowListing(text:"Home"),
                    _buildRowListing(text:"CGPA Calculator"),
                    _buildRowListing(text:"Unit Converter"),
                    _buildRowListing(text:"Solution Wizard"),
                    _buildRowListing(text:"Scientific Calculator"),
                    _buildRowListing(text:"My Saved Items"),
                    _buildRowListing(text:"Learn Science Stuffs"),
                    _buildRowListing(text:"Science Community"),
                    _buildRowListing(text:"Settings"),
                  ]),
                  const SizedBox(height:14),
                  Divider(
                  color:const Color(0xffEDEDED),
                    
                  ),
                  const SizedBox(height:20),
                  Wrap(
                    runSpacing: 20,
                  children:[
                    _buildRowListing(text:"Upgrade to Premium"),
                    _buildRowListing(text:"About QuickSolver"),
                    _buildRowListing(text:"How to use the App"),
                  ]),
                  const SizedBox(height:24),
                  Container(
                    padding:
                        const EdgeInsets.all(10),
                    width:double.maxFinite,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Color(0xffFFB71D)),
                    child: Row(
                    children:[
                      Icon(Icons.logout,color:Color(0xff333333)),
                      const SizedBox(width:20),
                      Text("Logout",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff333333))),
                    ])
                  ),
                  const SizedBox(height:24),
            ])))),
      ),
  }}
Widget _buildRowListing({String icon = "",required String text,Function ()? onTap})=>InkWell(
  onTap:onTap,
child:Padding(
padding:const EdgeInsets.symmetric(horizontal:15),child:Row(
children:[
  Icon(Icons.home,color:Color(0xff636363)),
  const SizedBox(width:20),
  Expanded(child:Text(text,style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 16,color: Color(0xff636363))))
])
  )
);
