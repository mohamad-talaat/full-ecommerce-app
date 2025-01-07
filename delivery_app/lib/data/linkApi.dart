class AppLink {
  static const String linkServerName = "http://10.0.2.2/ecommerce";
  static const String linkTest = "$linkServerName/test.php";

  //========================== Image ============================
  static const String imageststatic = "$linkServerName/upload";
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
// =============================================================

////////////////////////////////////// Auth  //////////////////////////////////////////

   static const String LinkLogin = "$linkServerName/delivery/auth/login.php";


  static const String LinkForResendVerfiyCode =
      "$linkServerName/delivery/auth/resend.php";

  ////////////////////////////////////// forget password  //////////////////////////////////////////

  static const String LinkCheckEmail =
      "$linkServerName/forgetpassword/checkemail.php";
  static const String LinkResetPassword =
      "$linkServerName/forgetpassword/resetpassword.php";
  static const String Linkverfiycodeforgetpassword =
      "$linkServerName/forgetpassword/verfiycode.php";



  ////////////////////////////////////// address  //////////////////////////////////////////

  static const String addAddress = "$linkServerName/address/add.php";
  static const String deleteAddress = "$linkServerName/address/delete.php";
  static const String viewAddress = "$linkServerName/address/view.php";
  static const String updateAddress = "$linkServerName/address/edit.php";


  ////////////////////////////////////// Orders  //////////////////////////////////////////

  static const String checkout = "$linkServerName/orders/checkout.php";

  static const String pendingOrders = "$linkServerName/delivery/orders/pending.php";
  static const String acceptedOrders= "$linkServerName/delivery/orders/accepted.php";
  static const String doneOrders    = "$linkServerName/delivery/orders/done.php";
  static const String approveOdrers = "$linkServerName/delivery/orders/approve.php";
  static const String archiveOrders = "$linkServerName/delivery/orders/archive.php";
  static const String detailsOrders = "$linkServerName/delivery/orders/details.php";

  ////////////////////////////////////// notifications  //////////////////////////////////////////

  static const String notification = "$linkServerName/notification.php";

  ////////////////////////////////////// offers  //////////////////////////////////////////

  static const String offers = "$linkServerName/offers.php";
}

/*  //const String linkServerName2 = "https://waelabohamza.com/coursephp" ;
const String linkServerName = "http://10.0.2.2/noteapp" ;
//const String linkServerName = "http://192.168.1.6/noteapp" ;

 */
