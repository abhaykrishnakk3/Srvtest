import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nellikka/controller/login_controller.dart';
import 'package:nellikka/screen/otp_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({
    Key? key,
  }) : super(key: key);


  final logincontroller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: h * 1 / 2,
                  color: const Color.fromARGB(255, 241, 241, 241),
                  child: Column(
                    children: [
                      Image.asset("assets/image.png"),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    
                    ],
                  )),
              SizedBox(height: h * 0.1),
              SizedBox(
                  width: w * 0.8,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 111, 98, 98)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 241, 241, 241),
                                borderRadius: BorderRadius.circular(8)),
                            height: h * 0.064,
                            width: w * 0.26,
                            child: Row(
                              children:  [
                            const    CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/1.png",
                                  ),
                                ),
                                SizedBox(width: w*0.01,),
                               const Text('+91'),
                               const Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                          Container(
                            height: h * 0.066,
                            width: w * 0.5,
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 241, 241, 241),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5,right: 5,bottom: 5),
                              child: Form(
                                key: logincontroller.formkey,
                                child: TextFormField(
                                  validator: (value){

                                    if(value!.length != 10){
                                      return "must have 10 digits";
                                    }
                                    
                                    if(value.isEmpty ){
                                      return "phonenumber is required";
                                    }
                                    return null;
                                  },
                                  controller: logincontroller.phonenumberController,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: h * 0.05),
              SizedBox(
                height: 50,
                width: w * 0.8,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (ctx) => OtpScreen()));
                      if(logincontroller.formkey.currentState!.validate()){
                          logincontroller.login();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 10, 180, 16)),
                    child: const Text("Login via OTP")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
