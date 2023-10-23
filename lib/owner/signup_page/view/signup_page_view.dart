import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class SignupPageView extends StatefulWidget {
  const SignupPageView({Key? key}) : super(key: key);

  Widget build(context, SignupPageController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: const Color.fromARGB(96, 255, 174, 0),
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF1E6FF),
          iconColor: Color.fromRGBO(255, 175, 0, 50),
          prefixIconColor: Color.fromRGBO(255, 175, 0, 50),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          const Text(
                            "SignUp Page",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(height: 16.0 * 2),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 8,
                                child: Image.asset(
                                  "assets/aset/logo.png",
                                  height: 250,
                                  width: 250,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: 16.0 * 2),
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 8,
                            child: Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    cursorColor:
                                        const Color.fromRGBO(255, 175, 0, 50),
                                    onSaved: (email) {},
                                    decoration: const InputDecoration(
                                      hintText: "Your email",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      cursorColor:
                                          const Color.fromRGBO(255, 175, 0, 50),
                                      onSaved: (username) {},
                                      decoration: const InputDecoration(
                                        hintText: "username",
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Icon(Icons.person),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor:
                                        const Color.fromRGBO(255, 175, 0, 50),
                                    decoration: const InputDecoration(
                                      iconColor:
                                          Color.fromRGBO(255, 175, 0, 50),
                                      hintText: "Your password",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 26.0),
                                  Hero(
                                    tag: "login_btn",
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromRGBO(
                                                    255, 175, 0, 50)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const FloatMainNavigationView(
                                                        initialSelectedIndex:
                                                            0)));
                                      },
                                      child: Text(
                                        "SignUp".toUpperCase(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignupPageView> createState() => SignupPageController();
}
