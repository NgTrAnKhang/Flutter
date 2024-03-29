import 'package:e_commerce_flutter/src/view/screen/genderhandler.dart';
import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class InforPage extends StatelessWidget {
  const InforPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: (MediaQuery.of(context).size.width) / 3,
                    ),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1800),
                      child: Text(
                        'Hoàn thành thông tin tài khoản!',
                        style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                      ),
                    ),
                    SizedBox(
                      height: (MediaQuery.of(context).size.width) / 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 30, left: 30, right: 30),
                      child: Column(
                        children: <Widget>[
                          FadeInUp(
                            duration: const Duration(milliseconds: 1800),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          68, 143, 255, 1)),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(68, 143, 255, .3),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(68, 143, 255, 1),
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Họ",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[700])),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(68, 143, 255, 1),
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Tên",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[700])),
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color:
                                                Color.fromRGBO(68, 143, 255, 1),
                                          ),
                                        ),
                                      ),
                                      child: const GenderSelectionPage()),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(68, 143, 255, 1),
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "dd/mm/YYYY",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[700])),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(68, 143, 255, 1),
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Số điện thoại",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[700])),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Địa chỉ",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[700])),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (MediaQuery.of(context).size.width) / 10,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1900),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // Customize button's background color
                                  // Customize button's elevation
                                  backgroundColor:
                                      const Color.fromRGBO(68, 143, 255, 1),
                                  elevation: 4,
                                  // Customize button's shape
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.26,
                                      right: MediaQuery.of(context).size.width *
                                          0.26),
                                  child: const Text(
                                    'Hoàn thành',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              )),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1900),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: const Color.fromRGBO(68, 143, 255, 1),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(255, 255, 255, 1),
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ])),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 15,
                left: 0,
                right: 0,
                child: AppBar(
                  leading: IconButton(
                    color: Colors.grey[600],
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: Text(
                    'Đăng ký',
                    style: TextStyle(color: Colors.grey[600], fontSize: 30),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
