import 'package:taxi_customer_demo/core/common/app_constants/image_constants.dart';
import 'package:taxi_customer_demo/core/common/view_models/rides_model.dart';

import '../../../routes/app_pages.dart';
import '../view_models/coupon_model.dart';
import '../view_models/sub_menu.dart';

class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': StringConstants.en,
    'sp_US': StringConstants.sp,
  };
}

class LocaleKeys {
  static const String acceptAJob = "acceptAJob";
}

class StringConstants {
  static const String acceptAJob = "Accept a job";
  static const String trackingRealtime = "Tracking Realtime";
  static const String earnMoney = "Earn Money";

  static const String myAcc = "My Account";
  static const String inviteFrd = "Invite Friends";
  static const String favourites = "Favourites";
  static const String faq = "FAQ";
  static const String sos = "SOS";
  static const String makeComp = "Make Complaints";
  static const String notification = "Notification";
  static const String about = "About";
  static const String policy = "Privacy Policy";
  static const String terms = "Terms & Condition";
  static const String logOut = "log out";


  static const String subTextOnboarding =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";
  static const String locationPermissionText =
      "Don't worry your data is private";
  static const String allowLocation = "Allow Location";
  static const String location = "Location";
  static const String permission = "Permission";
  static const String pleaseAllowThe = "Please Allow The";
  static const String permissionFromSettings = "Permission From Settings";
  static const String cancel = "Cancel";
  static const String settings = "Settings";
  static const String login = "Login";
  static const String loginSubText = "Login with your phone number";
  static const String phoneNumber = "Phone Number";
  static const String sendCode = "Send Code";
  static const String dontHaveAnAccount = "Don’t have an account?";
  static const String signUp = "Sign Up";
  static const String fullName = "Full Name";
  static const String email = "Email";
  static const String alreadyHaveAnAccount = "Already have an account?";
  static const String signIn = "Sign In";
  static const String enterVerificationCode = "Enter verification code";
  static const String codeHasBeenSentTo = "A code has been sent to";
  static const String didntReceiveACode = "Didn't receive a code?";
  static const String resend = "Resend";
  static const String verifyNow = "Verify Now";
  static const String whereDoYouWantToGo = "Where do you want to go?";
  static const String getStarted = "Get Started";

  static const String bankDetails = "BANK ACCOUNT & CARDS";
  static const String priAccount = "Primary account";
  static const String delete = "Delete";
  static const String addAcc = "ADD BANK ACCOUNT";
  static const String history = "History";
  static const String language = "Change Language";
  static const String wallet = "Wallet";
  static const String links = "QUICK LINKS";
  static const String deleteAccount = "Delete Account";


  static const String editProfile = "Edit Profile";
  static const String updateProfile = "Update Profile";


  static const String editCard = "Edit Card";
  static const String saveCard = "Save Card";
  static const String addMultipleStops = "Now you can add multiple stops";
  static const String home = "Home";
  static const String work = "Work";
  static const String address1 = "250 west, industrial area";
  static const String address2 = "4 number gali pratap nagar";

  static const String aboutDes = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essenti";

  static const Map<String, String> en = {
    LocaleKeys.acceptAJob: "Accept a job",
  };

  static const Map<String, String> sp = {
    LocaleKeys.acceptAJob: "Explore SP",
  };
}

List<SubMenu> driverSubMenu = [
  SubMenu(index: 0, title: StringConstants.about, trailing: 0, path: Routes.about),
  SubMenu(index: 1, title: StringConstants.policy, trailing: 0, path: Routes.privacyPolicy),
  SubMenu(index: 2, title: StringConstants.terms, trailing: 0, path: Routes.condition),
  SubMenu(index: 3, title: StringConstants.faq, trailing: 0, path: Routes.faq),
];

List<RidesModel> ridesModel = [
   RidesModel(image: ImageConstants.car, vehicleType: "Micro", persons: "4+1 Person", price: "20.00",),
   RidesModel(image: ImageConstants.auto, vehicleType: "Bajaji", persons: "3+1 Person", price: "10.00",),
   RidesModel(image: ImageConstants.bike, vehicleType: "Bike", persons: "1 Person", price: "5.00",),
   RidesModel(image: ImageConstants.car, vehicleType: "Mini", persons: "3+1 Person", price: "15.00",),
   RidesModel(image: ImageConstants.car, vehicleType: "Mini", persons: "3+1 Person", price: "15.00",),
];

List<CouponModel> couponModel = [
  CouponModel(title: "Tap to open your new year gift!", subTitle: "Enjoy 20% off up to \$2 on all rides this week! Use code: IND30", discountCode: "IND30",),
  CouponModel(title: "A jolly ride for a jolly flight!", subTitle: "Enjoy 14% off up to \$10 on all rides this week! Use code: IND30", discountCode: "IND30",),
  CouponModel(title: "Tap to open your new year gift!", subTitle: "Enjoy 20% off up to \$2 on all rides this week! Use code: IND30", discountCode: "IND30",),
];

List<String> cancelRideReasons = [
  "Waiting for a long time",
  "Ride isn't here",
  "Wrong address shown",
  "Don't charge rider",
  "Ride isn't here",
  "Otheres"
];

List<String> addressList = [
  StringConstants.address1,
  StringConstants.address2,
  StringConstants.address1,
  StringConstants.address2,
];

