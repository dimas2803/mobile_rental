import 'package:flutter/material.dart';
import 'package:uas/screen/recently_screen.dart';
import 'package:uas/utils/colors.dart';
import 'package:uas/utils/sizes.dart';

class TitleWithViewAllBtn extends StatelessWidget {
  const TitleWithViewAllBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding / 4),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: primaryColor,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Recently_screen(),
                  ));
                },
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
