import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double media) {
    return <Widget>[
      Container(
        width: media,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Website \nDevelopers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.cyan),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
                style: TextStyle(fontSize: 16.0, color: Colors.cyan),
              ),
            ),
            MaterialButton( 
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Packages",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child
        : Image.asset(
          "assets/images/lp_image.png",
          width: media,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    if (media.size.width > 800) {
      return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(media.size.width / 2.3),
          );
    
    } else {
      return Column(
      
            children: pageChildren(media.size.width),
          );
    }
  }
}


