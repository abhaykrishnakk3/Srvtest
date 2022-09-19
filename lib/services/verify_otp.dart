import 'dart:developer';

import 'package:get/get.dart';
import 'package:nellikka/model/otp_verification.dart';
import 'package:nellikka/screen/home_screen.dart';
import 'package:nellikka/services/api_endpoints.dart';
import 'package:http/http.dart' as http;

class OtpVerifyApi {
  otpVerifyApi(OtpVerificationModel obj) async {
    const uri = ApiEndpoints.baseUrl + ApiEndpoints.verifyOtp;

    final response = await http.post(Uri.parse(uri), body: obj.toJson());

    log(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      Get.off(const HomeScreen());
    } else {
      log(response.body);
    }
  }
}
