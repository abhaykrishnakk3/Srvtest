import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nellikka/controller/otp_controller.dart';
import 'package:nellikka/controller/resend_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    Key? key,
  }) : super(key: key);

  final otpVerifyController = Get.put(OtpController());
  final resendcontroller = Get.put(ResendOtpController());

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
                      SizedBox(
                        height: h * 0.05,
                      ),
                      Image.asset("assets/image.png"),
                      const Text(
                        "Enter OTP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "We have sent the OTP to 9895319120",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 167, 167, 167)),
                          ),
                          Icon(
                            Icons.note_alt_outlined,
                            color: Color.fromARGB(255, 167, 167, 167),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: h * 0.1),
              SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Enter OTP",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 167, 167, 167)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          selectedFillColor:
                              const Color.fromARGB(62, 105, 225, 255),
                          inactiveFillColor: Colors.white,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor:
                              const Color.fromARGB(255, 223, 223, 223),
                        ),

                        animationDuration: const Duration(milliseconds: 300),

                        enableActiveFill: true,

                        controller: otpVerifyController.otpController,
                        onCompleted: (v) {},
                        onChanged: (value) {},
                        // },
                      ),
                    ],
                  )),
              SizedBox(height: h * 0.05),
              SizedBox(
                height: 50,
                width: w * 0.8,
                child: ElevatedButton(
                    onPressed: () {
                      otpVerifyController.verifyOtp();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 10, 180, 16)),
                    child: const Text("Login")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text('Dont receive OTP? ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 167, 167, 167))),
                  TextButton(
                      onPressed: () {
                        resendcontroller.resendOtp();
                      },
                      child: const Text("Resend"))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
