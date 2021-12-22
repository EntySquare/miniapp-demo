import 'package:flutter/material.dart';

/*
  页面切换动画使用案例
  Navigator.of(context).push(animation.CustomRouteGradualChange(IndexPage()));
 */

//淡入淡出
class CustomRouteGradualChange extends PageRouteBuilder {
  final Widget widget;

  CustomRouteGradualChange(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 750),
            reverseTransitionDuration: const Duration(milliseconds: 225),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 2.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}

//淡入淡出2
class CustomRouteGradualChangeSlow extends PageRouteBuilder {
  final Widget widget;

  CustomRouteGradualChangeSlow(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 1500),
            reverseTransitionDuration: const Duration(milliseconds: 225),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 2.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}

//缩放
class CustomRouteZoom extends PageRouteBuilder {
  final Widget widget;

  CustomRouteZoom(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 100),
            reverseTransitionDuration: const Duration(milliseconds: 20),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)), child: child);
            });
}

//缩放
class CustomRouteZoomSlow extends PageRouteBuilder {
  final Widget widget;

  CustomRouteZoomSlow(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 2000),
            reverseTransitionDuration: const Duration(milliseconds: 20),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)), child: child);
            });
}

//旋转+缩放效果
class CustomRouteRotateZoom extends PageRouteBuilder {
  final Widget widget;

  CustomRouteRotateZoom(this.widget)
      : super(
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return RotationTransition(
                  turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: ScaleTransition(
                    scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                    child: child,
                  ));
            });
}

//滑动效果 - 左入
class CustomRouteSlide extends PageRouteBuilder {
  final Widget widget;

  CustomRouteSlide(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}

//滑动效果 - 左入
class CustomRouteSlideSlow extends PageRouteBuilder {
  final Widget widget;

  CustomRouteSlideSlow(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 2000),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}

//滑动效果 - 下入
class CustomRouteSlideFromBottomToTop extends PageRouteBuilder {
  final Widget widget;

  CustomRouteSlideFromBottomToTop(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(0, 0.5), end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation1, curve: Curves.linearToEaseOut)),
                child: child,
              );
            });
}

//滑动效果 - 下出
class CustomRouteSlideFromTopToBottom extends PageRouteBuilder {
  final Widget widget;

  CustomRouteSlideFromTopToBottom(this.widget)
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2, Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(0, -0.5), end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation1, curve: Curves.linearToEaseOut)),
                child: child,
              );
            });
}
