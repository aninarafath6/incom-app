import 'package:get/get.dart';
import 'package:incom/constants/app_images.dart';
import 'package:incom/models/broker_model.dart';

class ConnectBrokerController extends GetxController {
  var brokerList = [].obs;
  bool loading = false;

  void getBrokers() {
    loading = true;
    List<BrokerModel> data = [
      BrokerModel('Upstox', AppImages.upstox),
      BrokerModel('5 Paisa', AppImages.paisa),
      BrokerModel('ICICI Securities', AppImages.icic),
      BrokerModel('Axis Direct', AppImages.axis),
      BrokerModel('Zerodha', AppImages.zerodha),
      BrokerModel('Groww', AppImages.grow),
    ];
    brokerList.value = data;
    loading = false;
  }
}
