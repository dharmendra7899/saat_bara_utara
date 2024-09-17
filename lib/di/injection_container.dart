import 'package:get_it/get_it.dart';
import 'package:saat_bara_utara/app/core/network/config.dart';
import 'package:saat_bara_utara/app/core/network/dio_network_service_imp.dart';
import 'package:saat_bara_utara/app/core/network/network_service.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {

  serviceLocator.registerLazySingleton<NetworkService>(
    () => DioNetworkServiceImpl(
        baseUrl: ApiConstants.BASE_URL,
        defaultHeaders: {
        },
       ),
  );


}








