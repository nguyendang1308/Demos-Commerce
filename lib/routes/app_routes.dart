import 'package:demos/pages/app_navigation/app_navigation_screen.dart';
import 'package:demos/pages/app_navigation/binding/app_navigation_binding.dart';
import 'package:demos/pages/onboarding/binding/onboarding_binding.dart';
import 'package:demos/pages/onboarding/onboarding_screen.dart';
import 'package:demos/pages/product_listing_page/binding/product_listing_page_binding.dart';
import 'package:demos/pages/product_listing_page/product_list_page_screen.dart';
import 'package:get/get.dart';

//Using Get for optimize
class AppRoutes {
  static String splashPage = '/splash_page';

  static String productListingPage = '/product_listing_page';

  static String productDetailPage = '/product_details_page';

  static String appNavigationPage = '/app_navigation_page';

  static String initialRoute = '/initialRoute';

  static String onboardingPage = '/onboarding_page';

  static String demoTestPage = '/demo_page';
  static List<GetPage> pages = [
    GetPage(
      name: onboardingPage,
      page: () => const OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: appNavigationPage,
      page: () => const AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
        name: productListingPage,
        page: () => ProductListingPageScreen(),
        bindings: [
          ProductListingPageBinding(),
        ]),
  ];
}

//Option 2:Use if have less pages
// Map<String, WidgetBuilder> pagesRoutes() {
//   return <String, WidgetBuilder>{
//     '/example': (context) => MyApp(),
//   };
// }
