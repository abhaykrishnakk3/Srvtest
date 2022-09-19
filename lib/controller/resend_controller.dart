import 'package:get/get.dart';
import 'package:nellikka/controller/login_controller.dart';
import 'package:nellikka/services/resend_otp.dart';

class ResendOtpController extends GetxController{
  final loginController = Get.find<LoginController>();

  resendOtp()async{
   ResendOtp().resendOtpApi(loginController.phoneNumber!);
  }

}