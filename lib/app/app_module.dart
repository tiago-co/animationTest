import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.add(
      ModuleRoute(
        '/',
        module: HomeModule(),
        duration: const Duration(milliseconds: 2000),
      ),
    );
    super.routes(r);
  }
}
