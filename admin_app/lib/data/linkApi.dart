class AppLink {
  static const String linkServerName = "http://10.0.2.2/ecommerce";
  static const String linkTest = "$linkServerName/test.php";

  //========================== Image ============================
  static const String imageststatic = "$linkServerName/upload";
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
// =============================================================

////////////////////////////////////// Auth  //////////////////////////////////////////

   static const String LinkLogin = "$linkServerName/admin/auth/login.php";


  static const String LinkForResendVerfiyCode =
      "$linkServerName/admin/auth/resend.php";

  ////////////////////////////////////// forget password  //////////////////////////////////////////

  static const String LinkCheckEmail =
      "$linkServerName/forgetpassword/checkemail.php";
  static const String LinkResetPassword =
      "$linkServerName/forgetpassword/resetpassword.php";
  static const String Linkverfiycodeforgetpassword =
      "$linkServerName/forgetpassword/verfiycode.php";



  ////////////////////////////////////// Category  //////////////////////////////////////////

  static const String addCategory = "$linkServerName/admin/categories/add.php";
  static const String deleteCategory = "$linkServerName/admin/categories/delete.php";
  static const String viewCategory = "$linkServerName/admin/categories/view.php";
  static const String updateCategory = "$linkServerName/admin/categories/edit.php";
  ////////////////////////////////////// Items  //////////////////////////////////////////

  static const String addItems = "$linkServerName/admin/items/add.php";
  static const String deleteItems = "$linkServerName/admin/items/delete.php";
  static const String viewItems = "$linkServerName/admin/items/view.php";
  static const String updateItems = "$linkServerName/admin/items/edit.php";
  ////////////////////////////////////// address  //////////////////////////////////////////

  static const String addAddress = "$linkServerName/address/add.php";
  static const String deleteAddress = "$linkServerName/address/delete.php";
  static const String viewAddress = "$linkServerName/address/view.php";
  static const String updateAddress = "$linkServerName/address/edit.php";


  ////////////////////////////////////// Orders  //////////////////////////////////////////

  static const String checkout = "$linkServerName/orders/checkout.php";

  static const String pendingOrders = "$linkServerName/admin/orders/pending.php";
  static const String acceptedOrders= "$linkServerName/admin/orders/accepted.php";
  static const String doneOrders    = "$linkServerName/admin/orders/done.php";
  static const String approveOdrers = "$linkServerName/admin/orders/approve.php";
  static const String archiveOrders = "$linkServerName/admin/orders/archive.php";
  static const String detailsOrders = "$linkServerName/admin/orders/details.php";

  ////////////////////////////////////// notifications  //////////////////////////////////////////

  static const String notification = "$linkServerName/notification.php";

  ////////////////////////////////////// offers  //////////////////////////////////////////

  static const String offers = "$linkServerName/offers.php";
}

/*  //const String linkServerName2 = "https://waelabohamza.com/coursephp" ;
const String linkServerName = "http://10.0.2.2/noteapp" ;
//const String linkServerName = "http://192.168.1.6/noteapp" ;

 */
