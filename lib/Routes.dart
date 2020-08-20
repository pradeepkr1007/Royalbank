import 'package:flutter/material.dart';
import 'package:royalbank/screens/Login/index.dart';
import 'package:royalbank/screens/Home/index.dart';
import 'package:royalbank/screens/MakeDeposit/make_deposit.dart';
import 'package:royalbank/screens/MakeDeposit/account_select.dart';
import 'package:royalbank/screens/MakeDeposit/deposit_amount.dart';
import 'package:royalbank/screens/MakeDeposit/capture_cheque.dart';
import 'package:royalbank/screens/MakeDeposit/camera_mlvision.dart';
import 'package:royalbank/screens/MakeDeposit/ml_camera.dart';
import 'package:royalbank/screens/DepositHistory/deposit_history.dart';
import 'package:royalbank/screens/DepositHistory/history_detail.dart';
import 'package:royalbank/screens/DepositHistory/history_detail2.dart';
import 'package:royalbank/screens/TouchID/enable_touch_ID.dart';
import 'package:royalbank/screens/TouchID/disable_touch_ID.dart';
import 'package:royalbank/screens/aboutUs.dart';
import 'package:royalbank/theme/style.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/Login": (BuildContext context) => new LoginScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen(),
    "/MakeDeposit": (BuildContext context) => new MakeDepositScreen(),
    "/AccountSelection": (BuildContext context) => new AccountScreen(),
    "/DepositAmount": (BuildContext context) => new DepositAmount(),
    "/CaptureCheque": (BuildContext context) => new CaptureCheque(),
    "/CameraML": (BuildContext context) => new CameraMLVision(),
    "/MLCamera": (BuildContext context) => new MLCamera(),
    "/AboutBank": (BuildContext context) => new AboutBank(),
    "/DepositHistory": (BuildContext context) => new DepositHistory(),
    "/HistoryDetail": (BuildContext context) => new HistoryDetail(),
    "/HistoryDetail2": (BuildContext context) => new HistoryDetail2(),
    "/EnableTouchID": (BuildContext context) => new EnableTouchID(),
    "/DisbleTouchID": (BuildContext context) => new DisableTouchID(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Røyål ßånk",
      home: new LoginScreen(),
      theme: appTheme,
      routes: routes,
    ));
  }
}