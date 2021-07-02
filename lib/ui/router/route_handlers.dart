import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/page_404_view.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(
  handlerFunc: (context, params) {
    print(params);
    return CounterView(
      base: params['base']?[0] ?? '5',
    );
  },
);

final counterProviderHandler = Handler(
  handlerFunc: (context, params) {
    return CounterProviderView(
      base: params['q']?[0] ?? '10',
    );
  },
);

final dashboardUserHandler = Handler(
  handlerFunc: (context, params) {
    print(params);
    return Page404View();
  },
);

final pageNotFoundHanldler = Handler(
  handlerFunc: (_, __) {
    return Page404View();
  },
);
