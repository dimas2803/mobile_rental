//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/utils/colors.dart';
import 'package:uas/utils/sizes.dart';

class TopDealers extends StatelessWidget {
  const TopDealers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          TopDealersCard(
            image: "images/Toyota/toyota-fortuner.png",
            title: "Fortuner",
            press: () {},
          ),
          TopDealersCard(
            image: "images/Toyota/toyota-alphard.png",
            title: "Alphard",
            press: () {},
          ),
          TopDealersCard(
            image: "images/mitsubishi/mitsubishi-pajero-sport-car.png",
            title: "Pajero Sport",
            press: () {},
          ),
          TopDealersCard(
            image: "images/Toyota/toyota-hiace-vip-commuter.png",
            title: "HIACE",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TopDealersCard extends StatelessWidget {
  const TopDealersCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);
  final String image;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: defaultPadding,
                  top: defaultPadding / 2,
                ),
                width: size.width * 0.8,
                height: 185,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Text(
                  "$title",
                  style: TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
