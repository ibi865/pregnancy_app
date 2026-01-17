import 'package:get/get.dart';
import 'routes_name.dart';
import '../../view/home/home_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.home,
          page: () => const HomeView(),
          transition: Transition.fadeIn,
        ),
      ];
}
