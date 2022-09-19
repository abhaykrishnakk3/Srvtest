
class OtpVerificationModel {
    OtpVerificationModel({
        required this.mobile,
        required this.otp,
        required this.version,
        required this.token,
    });

    final String mobile;
    final String otp;
    final String version;
    final String token;


    Map<String, dynamic> toJson() => {
        "mobile": mobile,
        "otp": otp,
        "version": version,
        "token": token,
    };
}
