import 'dart:developer';

import 'package:nellikka/services/api_endpoints.dart';
import 'package:http/http.dart' as http;

class ResendOtp {
  resendOtpApi(String number) async {
    const uri = ApiEndpoints.baseUrl + ApiEndpoints.resendOtp;

    final response = await http.post(Uri.parse(uri), body: {"mobile": number});

    log(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      log("success");
    } else {
      log(response.body);
    }
  }
}
