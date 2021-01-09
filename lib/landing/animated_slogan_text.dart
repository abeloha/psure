import 'dart:async';

import 'package:flutter/material.dart';
import 'package:psure/landing/animated_text.dart';

enum AnimationType { Character, SlideDown }

class AnimatedSloganText extends StatefulWidget {
  final int delayInMilliseconds;

  AnimatedSloganText(this.delayInMilliseconds);

  @override
  State createState() => new _AnimationState();
}

class _AnimationState extends State<AnimatedSloganText>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<Alignment> eWalletSlideOut;
  Animation<double> eWalletFadeOut;

  Animation<Alignment> transferMoneySlideIn;
  Animation<double> transferMoneyFadeIn;
  Animation<Alignment> transferMoneySlideOut;
  Animation<double> transferMoneyFadeOut;

  Animation<Alignment> buySecurelySlideIn;
  Animation<double> buySecurelyFadeIn;

  String firstLocation = "eWallet";
  String secondLocation = "Transfer Money";
  String thirdLocation = "Buy Securely";

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 6));

    eWalletSlideOut = new AlignmentTween(
            begin: new Alignment(-1.0, 0.0), end: new Alignment(-1.0, 1.0))
        .animate(new CurvedAnimation(
            parent: animationController,
            curve: new Interval(0.4, 0.45, curve: Curves.easeIn)));
    eWalletFadeOut = new Tween<double>(begin: 1.0, end: 0.0).animate(
        new CurvedAnimation(
            parent: animationController,
            curve: new Interval(0.42, 0.45, curve: Curves.easeIn)));

    transferMoneySlideIn = new AlignmentTween(
      begin: new Alignment(-1.0, -1.0),
      end: new Alignment(-1.0, 0.0),
    ).animate(new CurvedAnimation(
        parent: animationController,
        curve: new Interval(0.42, 0.45, curve: Curves.easeIn)));
    transferMoneyFadeIn = new Tween<double>(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(
            parent: animationController, curve: new Interval(0.42, 0.45)));

    transferMoneySlideOut = new AlignmentTween(
            begin: new Alignment(-1.0, 0.0), end: new Alignment(-1.0, 1.0))
        .animate(new CurvedAnimation(
            parent: animationController,
            curve: new Interval(0.8, 0.85, curve: Curves.easeIn)));
    transferMoneyFadeOut = new Tween<double>(begin: 1.0, end: 0.0).animate(
        new CurvedAnimation(
            parent: animationController, curve: new Interval(0.82, 0.85)));

    buySecurelySlideIn = new AlignmentTween(
            begin: new Alignment(-1.0, -1.0), end: new Alignment(-1.0, 0.0))
        .animate(new CurvedAnimation(
            parent: animationController,
            curve: new Interval(0.8, 0.85, curve: Curves.easeIn)));
    buySecurelyFadeIn = new Tween<double>(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(
            parent: animationController, curve: new Interval(0.82, 0.85)));

    eWalletSlideOut.addListener(() {
      setState(() {});
    });
    eWalletFadeOut.addListener(() {
      setState(() {});
    });

    transferMoneySlideIn.addListener(() {
      setState(() {});
    });
    transferMoneyFadeIn.addListener(() {
      setState(() {});
    });

    transferMoneySlideOut.addListener(() {
      setState(() {});
    });
    transferMoneyFadeOut.addListener(() {
      setState(() {});
    });

    buySecurelySlideIn.addListener(() {
      setState(() {});
    });
    buySecurelyFadeIn.addListener(() {
      setState(() {});
    });

    new Future.delayed(
            new Duration(milliseconds: widget.delayInMilliseconds + 500))
        .then((_) {
      animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 40.0,
      child: new Stack(
        children: <Widget>[
          // eWallet
          new Align(
            alignment: eWalletSlideOut.value,
            child: new Opacity(
              opacity: eWalletFadeOut.value,
              child: new AnimatedText(
                firstLocation,
                widget.delayInMilliseconds,
                durationInMilliseconds: 500,
                textStyle: new TextStyle(
                    color: Colors.green,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          // New York
          new AlignTransition(
            alignment: !(transferMoneySlideIn.value.y == 0.0)
                ? transferMoneySlideIn
                : transferMoneySlideOut,
            child: new Opacity(
              opacity: !(transferMoneyFadeIn.value == 1.0)
                  ? transferMoneyFadeIn.value
                  : transferMoneyFadeOut.value,
              child: new Text(
                secondLocation,
                style: new TextStyle(
                    color: Colors.lightBlue.withOpacity(0.7),
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),

          // Buy Securely
          new Align(
            alignment: buySecurelySlideIn.value,
            child: new Opacity(
              opacity: buySecurelyFadeIn.value,
              child: new Text(
                thirdLocation,
                style: new TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
