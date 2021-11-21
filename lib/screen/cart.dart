import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wielabs/controller/imagepath.dart';
import 'package:wielabs/sizeconfig.dart';

class Cartpage extends StatefulWidget {
  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ListTileItem(
                title: 'Chicken',
                subtitle: "Rs 250 Only",
                imagePath: homeimage9,
              ),
              ListTileItem(
                title: 'Prawns',
                subtitle: "Rs 250 Only",
                imagePath: homeimage10,
              ),
              ListTileItem(
                title: 'Chicken',
                subtitle: "Rs 250 Only",
                imagePath: homeimage11,
              ),
            ],
            // // itemCount: 5,
            // itemBuilder: (context, index) {
            //   return ListTileItem(
            //     title: 'Chicken',
            //     subtitle: "Rs 250 Only",
            //   );
            // },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "ADDITIONAL COMMENTS (optional)",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: SizeConfig.safeBlockVertical! * 14,
            width: SizeConfig.safeBlockHorizontal! * 83,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black87)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Bring extra sauce etc,....",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: SizeConfig.safeBlockVertical! * 8,
            width: SizeConfig.safeBlockHorizontal! * 50,
            child: RaisedButton(
              color: Colors.lightGreen,
              shape: StadiumBorder(),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "        CHECKOUT",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

// ignore: must_be_immutable
class ListTileItem extends StatefulWidget {
  final String title;
  final String imagePath;
  final String subtitle;
  ListTileItem({
    required this.title,
    required this.imagePath,
    required this.subtitle,
  });
  @override
  _ListTileItemState createState() => new _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              color: Colors.red),
        ),
      ),
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      trailing: Container(
        width: SizeConfig.safeBlockHorizontal! * 30,
        child: Row(
          children: <Widget>[
            _itemCount != 0
                ? IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => setState(() => _itemCount--),
                  )
                : IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => setState(() {}),
                  ),
            Text(_itemCount.toString()),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () => setState(() => _itemCount++))
          ],
        ),
      ),
    );
  }
}
