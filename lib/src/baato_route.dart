// import 'package:baato_flutter_client/models/search.dart';
// import 'package:meta/meta.dart';
// import 'package:dio/dio.dart';
// import 'dart:convert';
// import 'exceptions.dart';
//
// class BaatoRoute {
//
//   String accessToken;
//   String type;
//   String apiVersion = "1";
//   String apiBaseUrl = "https://api.baato.io/api/v1/search";
//    String  mode;
//    // String[] points;
//    bool alternatives;
//    bool instructions;
//   Dio _client;
//
//   /// To initialize Jusibe message transactions
//   /// using [query] and [accessToken]
//   BaatoRoute.initialize(
//       {@required this.query,
//       @required this.accessToken,
//       this.apiBaseUrl = "https://api.baato.io/api/v1/search",
//       this.apiVersion,
//       this.type,
//       this.limit,
//       this.radius,
//       this.lat,
//       this.lon}) {
//     if (query == null) {
//       throw IsNullException('The public key cannot be null');
//     }
//     if (accessToken == null) {
//       throw IsNullException('The access token cannot be null');
//     }
//     _initializeDio();
//   }
//
//   /// Initialize Dio client for network requests
//   void _initializeDio() {
//     _client = Dio(BaseOptions(baseUrl: apiBaseUrl));
//   }
//
//   /// Search in baato
//   Future<SearchResponse> searchQuery() async {
//     Map responseBody;
//     SearchResponse returnable;
//     try {
//       final response = await _client.get(apiBaseUrl, queryParameters: {
//         "key": accessToken,
//         "q": query,
//         "type": type,
//         "radius": radius,
//         "limit": limit,
//         "lat": lat,
//         "lon": lon
//       });
//       responseBody = response.data;
//       returnable = SearchResponse.fromJson(responseBody);
//     } on DioError catch (error) {
//       if (error.response != null) {
//         var response = error.response;
//         responseBody = response.data;
//         throw Exception(responseBody['message']);
//       } else {
//         throw Exception("Failed to send SMS");
//       }
//     }
//     return returnable;
//   }
// }
