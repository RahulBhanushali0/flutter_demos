import 'package:flutter_resume_demo/routes/screen_bindings.dart';
import 'package:get/get.dart';
import '../view/home_screen.dart';
import '../view/pdf_screen.dart';
import 'route_names.dart';

class RouteGenerator {
  static List<GetPage<dynamic>> generate() {
    return <GetPage<dynamic>>[
      GetPage(
        name: RouteNames.HomeScreen,
        page: () => const HomeScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: RouteNames.Resume,
        page: () => const Resume(),
        // binding: GlobalScreenBindings(),
      ),
    ];
  }
}
