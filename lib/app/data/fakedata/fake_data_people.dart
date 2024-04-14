import 'package:tinkoff/app/data/models/people_model.dart';

abstract class FakeDataClass {
  static List<People> people = listpeople;
}

List<People> listpeople = [
  People('Алёна', '89523241044'),
  People('Даша', '89527334105'),
  People('Таня', '89523231074'),
  People('Костя', '89763241744'),
  People('Сестра', '89523241249'),
  People('Алексей', '89951360462'),
  People('Полина', '89553241044'),
  People('Настя', '89869407820'),
];
