import 'package:get/route_manager.dart';
import 'package:jesign/Routes/route_name.dart';

import '../ViewModels/Dashboard/dashboard_binding.dart';
import '../Views/Dashboard/dashboard_view.dart';
import '../Views/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RouteName.spashView,
            page: () => const SplashView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
          name: RouteName.dashboard,
          page: () => const DashboarView(),
          binding: DashboardBinding(),
          // children: [
          //   GetPage(
          //     name: Routes.COUNTRY,
          //     page: () => CountryView(),
          //     children: [
          //       GetPage(
          //         name: Routes.DETAILS,
          //         page: () => DetailsView(),
          //       ),
          //     ],
          //   ),
          // ],
        ),
      ];
}
