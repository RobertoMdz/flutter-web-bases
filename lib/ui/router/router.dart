import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/page_404_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful/:base',
      handler: _counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = _pageNotFoundHanldler;
  }

  // Handlers
  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) {
      print(params);
      return CounterView(
        base: params['base']?[0] ?? '5',
      );
    },
  );

  static Handler _counterProviderHandler = Handler(
    handlerFunc: (context, params) {
      return CounterProviderView();
    },
  );

  static Handler _pageNotFoundHanldler = Handler(
    handlerFunc: (_, __) {
      return Page404View();
    },
  );
}
