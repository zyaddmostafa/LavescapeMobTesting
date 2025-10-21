class OtpVerificationArgs {
  final String? email;
  final String? phoneNumber;
  final bool isPhoneSignup;

  OtpVerificationArgs({
    this.email,
    this.phoneNumber,
    required this.isPhoneSignup,
  });
}
