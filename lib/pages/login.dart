import 'package:ecommerce/pages/signup.dart';
import 'package:ecommerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/Mobile login-amico.png",
              ),
              Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 6),
              Center(
                child: Text(
                  "Please enter the details below \n to continue",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Email",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
              SizedBox(height: 6),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 237, 255),
                    borderRadius: BorderRadius.circular(8.0)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Enter Email"),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Password",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
              SizedBox(height: 6),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 237, 255),
                    borderRadius: BorderRadius.circular(8.0)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                    hintText: "Enter Password",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        iconSize: 22,
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                  ),
                  obscureText: _isObscure,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue[800], fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(18.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[800], // สีพื้นหลังของปุ่ม
                    padding: EdgeInsets.symmetric(
                        vertical: 20), // ขนาด padding ของปุ่ม
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // มุมโค้ง
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // ฟังก์ชันที่เรียกเมื่อกดปุ่ม
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Colors.blue[800], fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
