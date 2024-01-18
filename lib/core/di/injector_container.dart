import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector_container.config.dart';


 GetIt getIt = GetIt.instance;


@InjectableInit(asExtension: false)
FutureOr<GetIt> initializeDependencies() => init(getIt);

