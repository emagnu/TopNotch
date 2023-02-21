//
// Import LIBRARIES
import 'package:flutter/material.dart';
// Import FILES

//

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  Color homeBtnColor = Colors.green;
  Color aboutBtnColor = Colors.white;
  Color courseBtnColor = Colors.white;
  Color enrollBtnColor = Colors.white;
  Color contactBtnColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      //color: Colors.red,
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Required logo Image
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                child: Image.asset('../assets/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    // HOME container
                    MouseRegion(
                      onHover: (isHover) {
                        setState(() {
                          homeBtnColor = Colors.green;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color: homeBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: homeBtnColor == Colors.green
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ABOUT container
                    MouseRegion(
                      onHover: (event) {
                        setState(() {
                          aboutBtnColor = Colors.green;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          aboutBtnColor = Colors.white;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 60,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: aboutBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'About',
                            style: TextStyle(
                              color: aboutBtnColor == Colors.green
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // COURSES container
                    MouseRegion(
                      onHover: (event) {
                        setState(() {
                          courseBtnColor = Colors.green;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          courseBtnColor = Colors.white;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 60,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: courseBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Courses',
                            style: TextStyle(
                              color: courseBtnColor == Colors.green
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SERVICES container
                    // ENROLL container
                    MouseRegion(
                      onHover: (event) {
                        setState(() {
                          enrollBtnColor = Colors.green;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          enrollBtnColor = Colors.white;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 60,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: enrollBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Enroll',
                            style: TextStyle(
                              color: enrollBtnColor == Colors.green
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // CONCTACT US container
                    MouseRegion(
                      onHover: (event) {
                        setState(() {
                          contactBtnColor = Colors.green;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          contactBtnColor = Colors.white;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 60,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: contactBtnColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Contact Us ',
                            style: TextStyle(
                              color: contactBtnColor == Colors.green
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.favorite,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.logout,
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
