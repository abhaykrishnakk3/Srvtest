import 'dart:developer';

import 'package:get/get.dart';
import 'package:nellikka/screen/otp_screen.dart';
import 'package:nellikka/services/api_endpoints.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  loginApi(String number) async {
    const uri = ApiEndpoints.baseUrl + ApiEndpoints.login;

    final response = await http.post(Uri.parse(uri), body: {"mobile": number});

    log(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      log("success");

      Get.off(OtpScreen());
    } else {
      log(response.body);
    }
  }
}
