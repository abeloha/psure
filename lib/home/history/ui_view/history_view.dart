import 'package:flutter/material.dart';
import 'package:psure/home/home_app_theme.dart';

import 'package:psure/home/models/transaction_history_data.dart';

class HistoryView extends StatefulWidget {
  const HistoryView(
      {Key key, this.animationController, this.animation, this.data})
      : super(key: key);
  final AnimationController animationController;
  final Animation animation;
  final TransactionHistoryData data;
  @override
  _HistoryViewState createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    double left = 24;
    double right = 24;

    if (widget.data.transactionType == "CREDIT") {
      right = 55;
    } else {
      left = 55;
    }

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: widget.animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.animation.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: left, right: right, top: 0, bottom: 0),
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
                                    child: getBgWidget(),
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
                                          widget.data.currencyCode +
                                              " " +
                                              widget.data.amount.toString(),
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
                                    child: getNameWidget(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      bottom: 6,
                                      top: 2,
                                      right: 16,
                                    ),
                                    child: Text(
                                      widget.data.ref,
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
                                      widget.data.desc,
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
                                      widget.data.contractStartDate +
                                          " - " +
                                          widget.data.contractEndDate,
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
                          child: getArrowWidget(),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 10,
                        child: Text(
                          widget.data.transactionDate,
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

  Widget getBgWidget() {
    var bb = widget.data.contractStatus;
    return Image.asset("assets/home/back.png");
  }

  Widget getNameWidget() {
    String name = widget.data.sender;
    if (widget.data.transactionType == "DEBIT") {
      name = widget.data.recipient;
    }

    return Text(
      name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: HomeAppTheme.fontName,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.0,
        color: HomeAppTheme.nearlyBlack,
      ),
    );
  }

  Widget getArrowWidget() {
    if (widget.data.transactionType == "CREDIT") {
      return Image.asset("assets/home/arrow_in.png");
      ;
    } else {
      return Image.asset("assets/home/arrow_out.png");
    }
  }
}
