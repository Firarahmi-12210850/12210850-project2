import 'package:apk1/views/login_view.dart';
import 'package:apk1/views/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Text('Aplikasi\nPendataan Warga',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Stack(
              children: [
                   Container(
                    height: 380,
                     child: Card(
                      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                      color: Color.fromARGB(255, 217, 232, 52),
                      child: Column(
                        children: [
                          SizedBox(height: 100,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Color.fromARGB(255, 255, 247, 247),
                                filled: true
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: Color.fromARGB(255, 250, 247, 247),
                                  filled: true
                                ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>Dashboardview()
                            )
                          );
                          }, 
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Text('Login'),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              primary:Colors.blue
                            ),
                            ),
                        ],
                      ),
                                   ),
                   ),
                  Center(
                    child: Image.asset(
                      'assets/logo.png.png',
                      width: 150,
                      )),
              ],
            )
          ],
        ),
      ),
    );
  }
}