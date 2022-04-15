import 'package:get/get.dart';
import 'package:incom/models/trader.model.dart';

class HomeController extends GetxController {
  List<Trader> favoritesTrader = [
    Trader(
      name: 'Elsa Maria',
      userName: '@elsamaria',
      dp: 'assets/users/user1.png',
    ),
    Trader(
      name: 'Judy Tom',
      userName: '@judytom',
      dp: 'assets/users/user2.png',
    ),
    Trader(
      name: 'Jack Jones',
      userName: '@jackjones',
      dp: 'assets/users/user3.png',
    ),
    Trader(
      name: 'James E',
      userName: '@ejames',
      dp: 'assets/users/user4.png',
    ),
    Trader(
      name: 'Sam Benny',
      userName: '@sambenny',
      dp: 'assets/users/user5.png',
    ),
    Trader(
      name: 'Anna Jo',
      userName: '@annajo',
      dp: 'assets/users/user6.png',
    ),
  ];
}
