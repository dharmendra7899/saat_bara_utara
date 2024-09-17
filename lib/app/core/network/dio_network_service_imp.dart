import 'package:dio/dio.dart';
import 'exception/network_exception.dart';
import 'network_models/network_model.dart';
import 'network_service.dart';

class DioNetworkServiceImpl implements NetworkService {
  late Dio _dio;
  //late SessionManager _sessionManager; // Add a private field for SessionManager

  // Private constructor
  DioNetworkServiceImpl._internal(
      {/*required SessionManager sessionManager,*/
      Map<String, dynamic>? defaultHeaders}) {
    //_sessionManager = sessionManager; // Initialize the SessionManager
    defaultHeaders ??= {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    BaseOptions options = BaseOptions(
      headers: defaultHeaders,
    );

    _dio = Dio(options);

    // Add interceptors or other initial setup using sessionManager if needed
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
         /* await _sessionManager.getSession().then(
            (userSession) {
              if (userSession != null) {
              //  options.headers.addAll({"Authorization": userSession.accessToken});
                options.headers.forEach(
                  (key, value) {},
                );
              }
             // debugPrint("TOKEN :: ${userSession?.accessToken}");
            },
          );*/
          return handler.next(options);
        },
      ),
    );
  }

  static DioNetworkServiceImpl? _instance;

  factory DioNetworkServiceImpl(
      {required String baseUrl,
     // required SessionManager sessionManager,
      Map<String, dynamic>? defaultHeaders}) {
    _instance ??= DioNetworkServiceImpl._internal(
       /* sessionManager: sessionManager,*/ defaultHeaders: defaultHeaders);

    _instance!._dio.options.baseUrl = baseUrl;
    _instance!._dio.options.headers.addAll(defaultHeaders ?? {});

    return _instance!;
  }

  NetworkResponseModel _buildNetworkResponseModel(Response response) {
    return NetworkResponseModel(
      requestOptions: response.requestOptions,
      data: response.data,
      extra: response.extra,
      headers: response.headers,
      isRedirect: response.isRedirect,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }

  @override
  Future<NetworkResponseModel> delete(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await _dio.delete(
        url,
        queryParameters: queryParameters,
        data: data,
        options: Options(headers: headers),
      );
      return _buildNetworkResponseModel(response);
    } on DioException catch (e) {
      throw NetworkServiceException(
        message: e.message.toString(),
        statusCode: e.response!.statusCode!,
        responseData: e.response?.data,
      );
    } catch (e) {
      throw NetworkServiceException(message: e.toString());
    }
  }

  @override
  Future<NetworkResponseModel> get(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _buildNetworkResponseModel(response);
    } on DioException catch (e) {
      throw NetworkServiceException(
        message: e.message.toString(),
        statusCode: e.response?.statusCode,
        responseData: e.response?.data,
      );
    } catch (e) {
      throw NetworkServiceException(message: e.toString());
    }
  }

  @override
  Future<NetworkResponseModel> post(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _buildNetworkResponseModel(response);
    } on DioException catch (e) {
      throw NetworkServiceException(
        message: e.message.toString(),
        statusCode: e.response?.statusCode,
        responseData: e.response?.data,
      );
    } catch (e) {
      throw NetworkServiceException(message: e.toString());
    }
  }

  @override
  Future<NetworkResponseModel> put(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _buildNetworkResponseModel(response);
    } on DioException catch (e) {
      throw NetworkServiceException(
        message: e.message.toString(),
        statusCode: e.response?.statusCode,
        responseData: e.response?.data,
      );
    } catch (e) {
      throw NetworkServiceException(message: e.toString());
    }
  }

  @override
  Future<NetworkResponseModel> patch(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return _buildNetworkResponseModel(response);
    } on DioException catch (e) {
      throw NetworkServiceException(
        message: e.message.toString(),
        statusCode: e.response?.statusCode,
        responseData: e.response?.data,
      );
    } catch (e) {
      throw NetworkServiceException(message: e.toString());
    }
  }
}
