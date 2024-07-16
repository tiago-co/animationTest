import 'package:flutter_modular/flutter_modular.dart';
import '../../profile/profile_module.dart';
import 'home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(HomeStore.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.add(
      ChildRoute(
        Modular.initialRoute,
        child: (context) => const HomePage(),
        duration: const Duration(milliseconds: 2000),
      ),
    );
    r.add(
      ModuleRoute(
        '/profile',
        module: ProfileModule(),
        duration: const Duration(milliseconds: 2000),
      ),
    );

    super.routes(r);
  }
}
