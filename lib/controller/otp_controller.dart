import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nellikka/controller/login_controller.dart';
import 'package:nellikka/model/otp_verification.dart';
import 'package:nellikka/services/verify_otp.dart';

class OtpController extends GetxController{

     TextEditingController otpController = TextEditingController();
     final loginController = Get.find<LoginController>();
     verifyOtp()async{
      final mobile = loginController.phoneNumber;
      final otp =  otpController.text;
      const version = '1.0.1';
      const token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MmIwNjEyYjZkNWRhZjgzODI2NzU2ODgiLCJpYXQiOjE2NTU3ODM0NjMsImV4cCI6MTY1ODM3NTQ2M30.KWJQfjwN21Ypt6Sw1nh7RdKWom2VSLZiYnZ7TXEvYjI"; 
    final obj =  OtpVerificationModel(mobile: mobile!, otp: otp, version: version, token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MmIwNjEyYjZkNWRhZjgzODI2NzU2ODgiLCJpYXQiOjE2NTU3ODM0NjMsImV4cCI6MTY1ODM3NTQ2M30.KWJQfjwN21Ypt6Sw1nh7RdKWom2VSLZiYnZ7TXEvYjI" );
      
      OtpVerifyApi().otpVerifyApi(obj);

     }

}