import 'dart:async';

import 'package:chopper/chopper.dart';

class AuthorizationInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) {
    final request = applyHeader(chain.request, 'Authorization', '59817d733919417bb7b37a94cfd31697');
    return chain.proceed(request);
  }
}
