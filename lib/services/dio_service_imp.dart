import 'package:dio/dio.dart';
import 'package:imovies/services/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/4/', headers: {
      'content-type': 'application/json;charset=utf-8',
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNjc3NmNkNWNlMDNjMGNmZmRiY2U5MDUxMjRiMDdjMCIsInN1YiI6IjYxNmU2MTcwZGY4NmE4MDA0MzY0MGE1YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UMzpw-0TQI-OIYr9XEPm-_SLb9RupUCAh4_X-7f864I'
    }));
  }
}
