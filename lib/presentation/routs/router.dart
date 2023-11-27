import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/presentation/routs/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
  AutoRoute(page: MainRoute.page,initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: ProductRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: SplashRoute.page),
  ];
}