import 'package:get/get.dart';

import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/money/bindings/money_binding.dart';
import '../modules/money/views/money_view.dart';
import '../modules/number/bindings/number_binding.dart';
import '../modules/number/views/number_view.dart';
import '../modules/score/bindings/score_binding.dart';
import '../modules/score/views/score_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.SCORE,
      page: () => const ScoreView(),
      binding: ScoreBinding(),
    ),
    GetPage(
      name: _Paths.NUMBER,
      page: () => const NumberView(),
      binding: NumberBinding(),
    ),
    GetPage(
      name: _Paths.MONEY,
      page: () => const MoneyView(),
      binding: MoneyBinding(),
    ),
  ];
}
