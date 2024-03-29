import 'package:e_commerce_flutter/src/view/screen/home_screen.dart';
import 'package:e_commerce_flutter/src/view/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const maxWidthPercentage = 0.6;
    final maxWidth = screenWidth * maxWidthPercentage;

    return Expanded(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.width) / 1.5,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeInUp(
                            duration: const Duration(seconds: 1),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 12.0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle back button press
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 130,
                        child: FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeInUp(
                            duration: const Duration(milliseconds: 1300),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeInUp(
                            duration: const Duration(milliseconds: 1600),
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Center(
                                child: Text(
                                  "Đăng nhập",
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(
                                              255, 231, 231, 231),
                                          offset: Offset(1, 1),
                                          blurRadius: 2,
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.width) / 10,
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1750),
                  child: const Text(
                    'Chào mừng trở lại !',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(71, 71, 71, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.width) / 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 30, left: 30, right: 30),
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
                                    color:
                                        const Color.fromRGBO(68, 143, 255, 1)),
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
                                              color: Color.fromRGBO(
                                                  68, 143, 255, 1)))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Mật khẩu",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: (MediaQuery.of(context).size.width) / 8,
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
                                  left:
                                      MediaQuery.of(context).size.width * 0.28,
                                  right:
                                      MediaQuery.of(context).size.width * 0.28),
                              child: const Text(
                                'Đăng nhập',
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
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignupPage()));
                                  },
                                  style: TextButton.styleFrom(),
                                  child: const Text(
                                    'Chưa có tài khoản? Đăng ký ngay!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: (MediaQuery.of(context).size.width) / 10,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 2000),
                        child: SizedBox(
                          width: maxWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Handle onTap event
                                },
                                child: Container(
                                  width:
                                      40, // Adjust width and height as needed
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255), // Border color
                                      width: 4, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 209, 209, 209)
                                            .withOpacity(0.6), // Shadow color
                                        // Blur radius
                                        offset: const Offset(
                                            0, 3), // Offset of the shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/gglogo.png',
                                      width:
                                          30, // Adjust width and height as needed
                                      height: 30,
                                      fit: BoxFit
                                          .cover, // Ensure the image fills the circular container
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle onTap event
                                },
                                child: Container(
                                  width:
                                      40, // Adjust width and height as needed
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255), // Border color
                                      width: 4, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 209, 209, 209)
                                            .withOpacity(0.6), // Shadow color
                                        // Blur radius
                                        offset: const Offset(
                                            0, 3), // Offset of the shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/fblogo.png',
                                      width:
                                          30, // Adjust width and height as needed
                                      height: 30,
                                      fit: BoxFit
                                          .cover, // Ensure the image fills the circular container
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Handle onTap event
                                },
                                child: Container(
                                  width:
                                      40, // Adjust width and height as needed
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255), // Border color
                                      width: 4, // Border width
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                                255, 209, 209, 209)
                                            .withOpacity(.3), // Shadow color
                                        // Blur radius
                                        offset: const Offset(
                                            0, 3), // Offset of the shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/twlogo.png',
                                      width:
                                          30, // Adjust width and height as needed
                                      height: 30,
                                      fit: BoxFit
                                          .cover, // Ensure the image fills the circular container
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (MediaQuery.of(context).size.width) / 14,
                      ),
                      FadeInUp(
                          duration: const Duration(milliseconds: 2100),
                          child: const Text(
                            "Quên mật khẩu?",
                            style: TextStyle(
                                color: Color.fromRGBO(68, 143, 255, 1)),
                          )),
                      SizedBox(
                        height: (MediaQuery.of(context).size.width) / 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
