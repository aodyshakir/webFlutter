import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:webproject/pages/about_page/about.dart';
import 'package:webproject/pages/homepage/homepage.dart';
import 'package:webproject/pages/supourt/supourt.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    if (media.size.width > 1200) {
      return DesktopNavbar();
    } else if (media.size.width > 800 && media.size.width < 1200) {
      return DesktopNavbar();
    } else {
      return MobileNavbar();
    }
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Flutter Studio",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MyHomePage.routeName);
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.cyan, fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AboutPage.routeName);
                  },
                  child: Text(
                    'About us',
                    style: TextStyle(color: Colors.cyan, fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Supourt.routeName);
                  },
                  child: Text(
                    "Supourt",
                    style: TextStyle(color: Colors.cyan, fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "Flutter Studio",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.cyan, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MyHomePage.routeName);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                  FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AboutPage.routeName);
                  },
                  child: Text(
                    "About us",
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                 FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Supourt.routeName);
                  },
                  child: Text(
                    "Supourt",
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
