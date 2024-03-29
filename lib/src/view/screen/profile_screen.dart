import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/profile_pic.png'),
            const Text(
              "Xin chào, Tung!",
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 95, 156),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 20,
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 21, 95, 156),

                    padding: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.width) / 1.2,
                        top: 16,
                        bottom: 16), // Padding cho nút

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Định dạng viền của nút
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(''),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                        width: 1, color: Color.fromARGB(255, 21, 95, 156)),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.width) / 1.2,
                        top: 16,
                        bottom: 16), // Padding cho nút

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Định dạng viền của nút
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(''),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
