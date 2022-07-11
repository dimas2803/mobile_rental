import 'package:flutter/material.dart';
import 'package:uas/screen/detail/booking.dart';
import 'package:uas/screen/detail/detail_mobil.dart';
import 'package:uas/utils/colors.dart';
import 'package:uas/utils/sizes.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          HotDealCard(
            image: "images/honda/honda-brio.png",
            title: "HONDA BRIO",
            bbm: "20",
            price: 220000,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Boking(),
              ));
            },
          ),
          HotDealCard(
            image: "images/Toyota/toyota_avansa_new.png",
            title: "ALL NEW AVANSA",
            bbm: "25 Liter",
            price: 300000,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Boking(),
              ));
            },
          ),
          HotDealCard(
            image: "images/Nisan/nisan_grand_livina_old.png",
            title: "GRANDLIVINA OLD",
            bbm: "20 Liter",
            price: 280000,
            press: () {},
          ),
          HotDealCard(
            image: "images/daihatsu/daihatsu-sigra.png",
            title: "SIGRA",
            bbm: "25 Liter",
            price: 270000,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Boking(),
              ));
            },
          ),
        ],
      ),
    );
  }
}

class HotDealCard extends StatelessWidget {
  const HotDealCard({
    Key key,
    this.image,
    this.title,
    this.bbm,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, bbm;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double widthCard = size.width * 0.6;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      width: widthCard,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding, top: defaultPadding),
              child: Text(
                "$title",
                style: Theme.of(context).textTheme.button.copyWith(color: textColor),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding),
              child: Text(
                "$bbm",
                style: Theme.of(context).textTheme.button.copyWith(color: primaryColor.withOpacity(0.5)),
              ),
            ),
            Image.asset(image),
            Container(
              width: widthCard,
              alignment: Alignment.centerRight,
              padding: new EdgeInsets.only(right: defaultPadding, bottom: defaultPadding / 2),
              child: Text(
                'Rp $price',
                style: Theme.of(context).textTheme.button.copyWith(color: primaryColor),
              ),
            ),
            SizedBox(
              width: widthCard,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                color: primaryColor,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Boking(),
                  ));
                },
                child: Text(
                  "Rent Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
