import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wielabs/controller/imagepath.dart';
import 'package:wielabs/sizeconfig.dart';

class Wielabs extends StatefulWidget {
  const Wielabs({Key? key}) : super(key: key);

  @override
  _WielabsState createState() => _WielabsState();
}

class _WielabsState extends State<Wielabs> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Marina",
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                color: Colors.black,
              ),
            ),
            Text(
              "s-29 396/169 Hyderabad",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 15,
              ),
            )
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: SizeConfig.safeBlockVertical! * 12,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "What would you like\nto eat today?",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Container(
              height: SizeConfig.safeBlockVertical! * 4,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "categories",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              width: SizeConfig.safeBlockHorizontal! * 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductTypeTile(
                    productTypeTileName: "Chicken",
                    productTypeImage: homeimage1,
                  ),
                  ProductTypeTile(
                    productTypeTileName: "Meat",
                    productTypeImage: homeimage4,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductTypeTile(
                    productTypeTileName: "Fish",
                    productTypeImage: homeimage2,
                  ),
                  ProductTypeTile(
                    productTypeTileName: "Prawns",
                    productTypeImage: homeimage3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: SizeConfig.safeBlockVertical! * 6,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Popular Items",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              child: GridView.count(
                physics: ScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                children: <Widget>[
                  GridContanerNew(
                    productName: "Product Name",
                    productTime: "15 Mins",
                    productprice: "200 \u{20B9} 500gm",
                    imagePath: homeimage5,
                  ),
                  GridContanerNew(
                    productName: "Product Name",
                    productTime: "15 Mins",
                    productprice: "200 \u{20B9} 500gm",
                    imagePath: homeimage6,
                  ),
                  GridContanerNew(
                    productName: "Product Name",
                    productTime: "15 Mins",
                    productprice: "200 \u{20B9} 500gm",
                    imagePath: homeimage7,
                  ),
                  GridContanerNew(
                    productName: "Product Name",
                    productTime: "15 Mins",
                    productprice: "200 \u{20B9} 500gm",
                    imagePath: homeimage8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTypeTile extends StatelessWidget {
  
  final String productTypeTileName;
  final String productTypeImage;
  const ProductTypeTile({
    Key? key,
    required this.productTypeTileName,
    required this.productTypeImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: SizeConfig.safeBlockHorizontal! * 25,
        width: SizeConfig.safeBlockHorizontal! * 45,
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.safeBlockHorizontal! * 10,
              width: SizeConfig.safeBlockHorizontal! * 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(productTypeImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(productTypeTileName),
          ],
        ),
      ),
    );
  }
}

class GridContanerNew extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productprice;
  final String productTime;
  const GridContanerNew({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productprice,
    required this.productTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.all(5),
      height: SizeConfig.safeBlockVertical! * 10,
      width: SizeConfig.safeBlockHorizontal! * 45,
      child: Stack(
        children: [
          Positioned(
            bottom: 25,
            left: 10,
            child: Text(
              productName,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              bottom: 8,
              left: 10,
              child: Text(
                productprice,
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              color: Colors.lightGreen,
              child: Text(
                productTime,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
