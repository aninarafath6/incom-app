import 'package:incom/models/info.model.dart';
import 'package:incom/models/trader.model.dart';

class PostModel {
  final Trader user;
  final String content;
  final String imageURL;
  final Info information;

  PostModel({
    required this.user,
    required this.content,
    required this.imageURL,
    required this.information,
  });
}
