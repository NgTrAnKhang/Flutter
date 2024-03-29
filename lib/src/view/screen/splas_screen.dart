import 'package:e_commerce_flutter/src/view/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const maxWidthPercentage = 0.8;
    final maxWidth = screenWidth * maxWidthPercentage;
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 40),
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'GOBook',
                style: TextStyle(
                  fontSize: 50,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 21, 95, 156),
                    ),
                  ],
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/img.jpg', // Replace 'assets/your_image.png' with the path to your image
                height: 300, // Adjust the height of the image
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue), // Background color
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Text color
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  ), // Button padding
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(24), // Button border radius
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(4), // Elevation
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white), // Background color
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  // Text color
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  ), // Button padding
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(24), // Button border radius
                    ),
                  ),
                  elevation: MaterialStateProperty.all<double>(4), // Elevation
                ),
                child: const Text(
                  'Đăng ký',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
