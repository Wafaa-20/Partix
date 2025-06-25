import 'package:flutter/material.dart';

extension Navigation on BuildContext{
   void customPushReplacement(Widget path) {
    Navigator.pushReplacement(this, MaterialPageRoute(builder: (_) => path));
  }

  void customPush(Widget path) {
    Navigator.push(this, MaterialPageRoute(builder: (_) => path));
  }

<<<<<<< HEAD
  void customPop() {
    Navigator.pop(this);
  }

}
=======
  Future? customPushWithReturnValue(Widget path) {
    return Navigator.push(this, MaterialPageRoute(builder: (_) => path));
  }

  void customPop() {
    Navigator.pop(this);
  }
}
>>>>>>> 7e586c6f35f805f76aa6314b480c890d2c6b2356
