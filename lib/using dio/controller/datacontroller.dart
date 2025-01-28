import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/datamodel.dart';
import '../service/dioservice.dart';

class DataController extends GetxController {
  @override
  void onInit() {
    fetchData();
    isInteawaitrnetConnected();
    super.onInit();
  }

  RxList<DataModel> datas = RxList();
  RxBool isLoading = true.obs;
  RxBool isListDown = false.obs;
   RxBool isNetConnected= true.obs;




  var scrollController = ItemScrollController();

  /// to check the internet connectivity
  void isInteawaitrnetConnected() async {
      isNetConnected=(await InternetConnectionChecker().hasConnection) as RxBool;
  }

  ///to fetch all the values from api



  fetchData() async {
    isInteawaitrnetConnected();
    isLoading.value = true;
    var response = await DioService().getData();
    if (response.statusCode == 200) {
      response.data.forEach((data) {
        datas.add(DataModel.fromJson(data));

      });
      isLoading.value = false;
    }
  }

  ///goto end of the listview
  scrollToDown() {
    scrollController.scrollTo(
        index: datas.length,
        duration: const Duration(seconds: 4),
        curve: Curves.bounceInOut);
    isListDown.value = true;
  }

  ///goto top of the listview
  scrollToUp() {
    scrollController.scrollTo(
        index: 0,
        duration: const Duration(seconds: 4),
        curve: Curves.slowMiddle);
    isListDown.value = false;

  }


}
