import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sizeconfig.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({Key? key}) : super(key: key);

  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Product Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                height: SizeConfig.safeBlockVertical! * 55,
                width: SizeConfig.safeBlockHorizontal! * 150,
                child: Stack(
                  children: [
                    Positioned(
                      left: SizeConfig.safeBlockHorizontal! * 40,
                      child: Container(
                        height: SizeConfig.safeBlockVertical! * 55,
                        width: SizeConfig.safeBlockHorizontal! * 92,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/product.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "BoneLess Chicken",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        left: 10,
                        child: Text(
                          "15 Mins Delivery",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                        )),
                    Positioned(
                      top: 100,
                      left: 15,
                      child: Container(
                        height: SizeConfig.safeBlockVertical! * 25,
                        width: SizeConfig.safeBlockHorizontal! * 19,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Weight",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.white60,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              "500 gr.",
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 15,
                      child: Container(
                        height: SizeConfig.safeBlockVertical! * 5,
                        width: SizeConfig.safeBlockHorizontal! * 30,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Kcal  400",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text(
                        "Details",
                        style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: SizeConfig.safeBlockVertical! * 20,
                width: double.infinity,
                child: Text(
                  "A mix of dark and white meat,our large Chicken Cut pieces,included one leg, one wing without tip,and one breast quarter with backbone. Obtained from pasture raised healthy chickens,the meat has a rich, juicy flavour with a tender, smooth and moderate-firm texture.Best suited for curries.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: SizeConfig.safeBlockVertical! * 8,
                width: double.infinity,
                child: Text(
                  "Total Price\n'\u{20B9}${25}",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                height: SizeConfig.safeBlockVertical! * 8,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.favorite,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: RaisedButton(
                        color: Colors.lightGreen,
                        shape: StadiumBorder(),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Add to cart ",
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
