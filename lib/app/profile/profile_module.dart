import 'package:heroanimation/app/profile/profile_page.dart';
import 'package:heroanimation/app/profile/profile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(ProfileStore.new);
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.add(
      ChildRoute(
        Modular.initialRoute,
        child: (_) => const ProfilePage(),
        duration: const Duration(milliseconds: 2000),
      ),
    );
    super.routes(r);
  }
}
