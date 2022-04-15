import 'package:incom/models/info.model.dart';
import 'package:incom/models/post.model.dart';
import 'package:incom/models/trader.model.dart';

class DiscoverController {
  List<PostModel> posts = [
    PostModel(
      user: Trader(
        name: 'Elsa Maria',
        userName: '@elsamaria',
        dp: 'assets/users/user1.png',
      ),
      imageURL: 'assets/images/news/new3.jpeg',
      information: Info(
        date: '12 jun 2022',
        time: '4',
        heading:
            'Infosys Reports 12% YoY Rise Iin \nNet Profit in Q4 - Top ...',
      ),
      content: '',
    ),
    PostModel(
      user: Trader(
        name: 'Elsa Maria',
        userName: '@elsamaria',
        dp: 'assets/users/user1.png',
      ),
      imageURL: 'assets/images/news/new3.jpeg',
      information: Info(
        date: '12 jun 2022',
        time: '4',
        heading:
            'Infosys Reports 12% YoY Rise Iin \nNet Profit in Q4 - Top ...',
      ),
      content: '',
    ),
    PostModel(
      user: Trader(
        name: 'Elsa Maria',
        userName: '@elsamaria',
        dp: 'assets/users/user1.png',
      ),
      imageURL: 'assets/images/news/new3.jpeg',
      information: Info(
        date: '12 jun 2022',
        time: '4',
        heading:
            'Infosys Reports 12% YoY Rise Iin \nNet Profit in Q4 - Top ...',
      ),
      content: '',
    ),
  ];
}
