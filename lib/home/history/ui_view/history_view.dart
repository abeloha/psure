import 'package:flutter/material.dart';
import 'package:psure/home/home_app_theme.dart';

class HistoryView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  const HistoryView({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HomeAppTheme.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: HomeAppTheme.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                child: SizedBox(
                                  height: 74,
                                  child: AspectRatio(
                                    aspectRatio: 1.714,
                                    child: Image.asset("assets/home/back.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 100,
                                          right: 16,
                                          top: 16,
                                        ),
                                        child: Text(
                                          "NGN 250,000.00",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontFamily: HomeAppTheme.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            letterSpacing: 0.0,
                                            color: HomeAppTheme.nearlyDarkBlue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 4,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Onuoha Abel Agu",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: HomeAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        color: HomeAppTheme.nearlyBlack,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 2,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Ref: 02525-Trv-Ujk-Tranfer",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: HomeAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.0,
                                        color:
                                            HomeAppTheme.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 2,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Payment for Cloths sent to me",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: HomeAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.0,
                                        color:
                                            HomeAppTheme.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 2,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Contract - 25-Nov-2020 - 30-Nov-2020",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: HomeAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.0,
                                        color:
                                            HomeAppTheme.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 2,
                                      right: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -16,
                        left: 0,
                        child: SizedBox(
                          width: 110,
                          height: 110,
                          child: Image.asset("assets/home/arrow_in.png"),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 10,
                        child: Text(
                          "12-Nov-2020",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: HomeAppTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            letterSpacing: 0.0,
                            color: HomeAppTheme.dark_grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
