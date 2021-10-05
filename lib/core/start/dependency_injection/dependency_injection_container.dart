import 'package:get_it/get_it.dart';

final _injectionContainer = GetIt.instance;
get container => _injectionContainer;

void setupContainer() {
  _setupViewmodels();
}

void _setupViewmodels() {}
