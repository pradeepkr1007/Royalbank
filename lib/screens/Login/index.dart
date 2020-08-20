import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:royalbank/theme/style.dart';
import 'style.dart';
import 'package:royalbank/components/TextFields/inputField.dart';
import 'package:royalbank/components/Buttons/textButton.dart';
import 'package:royalbank/components/Buttons/roundedButton.dart';
import 'package:royalbank/services/validations.dart';
import 'package:royalbank/services/authentication.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>{
  BuildContext context;
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ScrollController scrollController = new ScrollController();
  UserData user = new UserData();
  UserAuth userAuth = new UserAuth();

  bool autovalidate = false;
  Validations validations = new Validations();

  _onPressed() {
    print("button clicked");
  }

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  }

  void _handleSubmitted() {
    final FormState form = formKey.currentState;
    if (!form.validate()) {
      autovalidate = true; // Start validating on every change.
      showInSnackBar('Please fix the errors in red before submitting.');
    } else {
      form.save();
      userAuth.verifyUser(user).then((onValue) {
        if (onValue == "Login Successfull") {
          Navigator.pushNamed(context, "/HomePage");
          form.reset();
        }
        else
          showInSnackBar(onValue);
      }).catchError((Object onError) {
        showInSnackBar(onError);
      });
    }
  }

  //TODO:Local Authentication like Touch_ID or Face_ID
  final LocalAuthentication auth = LocalAuthentication();
  bool _canCheckBiometrics;
  List<BiometricType> _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  // Biometric Available?
  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }
  //Get list of Biometrics
  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  //Authenticating using Biometrics
  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: true);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    if(authenticated)
      Navigator.pushNamed(context, "/HomePage");

  }

  //Executing Touch ID Biometrics
  /*Future<void> TouchID() async {
    if (await _isBiometricAvailable()) {
    await _getListOfBiometricTypes();
    await _authenticateUser();
    }
  }*/

  @override
  void initState() {
    super.initState();
    _authenticate();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery.of(context).size;
    //print(context.widget.toString());

    Validations validations = new Validations();
    return Scaffold(
        key: _scaffoldKey,
        body: new SingleChildScrollView(
            controller: scrollController,
            child: new Container(
              padding: new EdgeInsets.all(16.0),
              decoration: new BoxDecoration(image: backgroundImage),
              child: new Column(
                children: <Widget>[
                  new Container(
                    height: screenSize.height / 3,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text('Royal Bank',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color:  Colors.white,
                              fontSize: 35.00),),
                        new Center(
                            child: new Image(
                          image: logo,
                          width: (screenSize.width < 500)
                              ? 233.0
                              : (screenSize.width / 6) + 12.0,
                          height: screenSize.height / 8 + 30,
                        ))
                      ],
                    ),
                  ),
                  new Container(
                    height: (screenSize.height*2)/ 3,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Form(
                          key: formKey,
                          autovalidate: autovalidate,
                          child: Card(
                            color: Colors.red[300],
                            elevation: 50.0,
                            borderOnForeground: false,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new InputField(
                                      hintText: "Username",
                                      obscureText: false,
                                      textInputType: TextInputType.text,
                                      textStyle: textStyle,
                                      textFieldColor: textFieldColor,
                                      icon: Icons.mail_outline,
                                      iconColor: Colors.white,
                                      bottomMargin: 20.0,
                                      validateFunction: validations.validateEmail,
                                      onSaved: (String email) {
                                        user.email = email;
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: new InputField(
                                      hintText: "Password",
                                      obscureText: true,
                                      textInputType: TextInputType.text,
                                      textStyle: textStyle,
                                      textFieldColor: textFieldColor,
                                      icon: Icons.lock_open,
                                      iconColor: Colors.white,
                                      bottomMargin: 30.0,
                                      validateFunction:
                                      validations.validatePassword,
                                      onSaved: (String password) {
                                        user.password = password;
                                      }),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                new RoundedButton(
                                  buttonName: "Secure Log In",
                                  onTap: _handleSubmitted,
                                  icon: Icon(Icons.lock, color: Colors.white,),
                                  width: screenSize.width*0.75,
                                  height: 50.0,
                                  bottomMargin: 10.0,
                                  borderWidth: 0.0,
                                  buttonColor: Colors.red[500],
                                ),
                              ],
                            ),
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new TextButton(
                                buttonName: "Need Help? Click Here",
                                icon: Icon(Icons.help_outline, size: 20.0,color: Colors.white,),
                                onPressed: _onPressed,
                                buttonTextStyle: buttonTextStyle)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
