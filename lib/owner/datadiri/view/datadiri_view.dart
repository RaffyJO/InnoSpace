import 'package:flutter/material.dart';
import 'package:innospace/core.dart';

class DatadiriView extends StatefulWidget {
  const DatadiriView({Key? key}) : super(key: key);

  Widget build(context, DatadiriController controller) {
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
                                      hintText: "Nama Depan",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    cursorColor:
                                        const Color.fromRGBO(255, 175, 0, 50),
                                    onSaved: (email) {},
                                    decoration: const InputDecoration(
                                      hintText: "Nama Belakang",
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
                                        hintText: "No Telephone",
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Icon(Icons.numbers_outlined),
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
                                      hintText: "Tanggal Lahir",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.date_range_outlined),
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
                                      child: const Text(
                                        "Sign Up",
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
  State<DatadiriView> createState() => DatadiriController();
}
