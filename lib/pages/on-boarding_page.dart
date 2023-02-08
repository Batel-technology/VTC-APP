import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vtc_app/utils/triangle-painter.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView(
            controller: _controller,
            children: [
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/welcome.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 200),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFEAD637),
                        fontFamily: 'Rubik Glitch'),
                  ),
                )
              ]),
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/landing1.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-5 / 360),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(color: Color(0xFF121646)),
                            child: Text(
                              "Réservez une course en quelques clics !",
                              style: TextStyle(
                                color: Color(0xFFE5E4E4),
                                fontSize: 16,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 30, bottom: 30, right: 50, left: 50),
                        child: Text(
                          "Finie les temps perdu à chaque arrêt en quelques clics votre chauffeur est a votre service",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0, -1),
                                  blurRadius: 0.8,
                                  color: Color.fromARGB(125, 0, 0, 255),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/landing2.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-5 / 360),
                        child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(color: Color(0xFF121646)),
                            child: Text(
                              "Suivez votre trajet en temps réel",
                              style: TextStyle(
                                color: Color(0xFFE5E4E4),
                                fontSize: 16,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 30, bottom: 30, right: 50, left: 50),
                        child: Text(
                          "le conducteur partage avec vous les données de trajet à la fin d'un voyage paisible",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0, -1),
                                  blurRadius: 0.8,
                                  color: Color.fromARGB(125, 0, 0, 255),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      activeDotColor: Color(0xFFEAD637)),
                ),
                Spacer(),
                SizedBox(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        print("next Page");
                        _controller.nextPage(
                            duration: Duration(milliseconds: 900),
                            curve: Curves.ease);
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          RotationTransition(
                            turns: AlwaysStoppedAnimation(90 / 360),
                            child: CustomPaint(
                              painter: TrianglePainter(),
                              size: Size(70, 60),
                            ),
                          ),
                          Text(
                            "Suivant",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
