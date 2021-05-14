import 'package:flutter/material.dart';

import 'cry_route.dart';

class Cry {
  static Widget init(BuildContext context, Widget? child) {
    return Material(
      child: Overlay(
        initialEntries: [
          OverlayEntry(builder: (c) => child ?? Container()),
        ],
      ),
    );
  }

  static pushNamedAndRemove(String name) {
    CryRoute.instance.pushNamedAndRemove(name);
  }

  static popAndPushNamed(String name) {
    CryRoute.instance.popAndPushNamed(name);
  }

  static pushNamed(String name) {
    CryRoute.instance.pushNamed(name);
  }

  static push(Widget widget) {
    CryRoute.instance.push(widget);
  }

  static pop() => CryRoute.instance.pop();
}
