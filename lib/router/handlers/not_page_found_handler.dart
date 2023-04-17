import 'package:fluro/fluro.dart';
import 'package:trumed/features/not_found/presentation/views/not_found_view.dart';

class NotPageFoundHandler {
  static Handler notFoundHandler = Handler(handlerFunc: (context, params) {
    return const NotFoundView();
  });
}
