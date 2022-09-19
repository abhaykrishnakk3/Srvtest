import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nellikka/services/login.dart';

class LoginController extends GetxController{
    
      final phonenumberController = TextEditingController();

      final formkey = GlobalKey<FormState>();
     String? phoneNumber; 
      login()async{
        phoneNumber = phonenumberController.text;
        LoginApi().loginApi(phonenumberController.text);
      }

}