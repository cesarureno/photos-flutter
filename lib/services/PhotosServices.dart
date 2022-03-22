import 'package:dio/dio.dart';

class PhotosServices {
  late Response response;
  Dio dio = Dio();

  getPhotos(int page, String search) async {
    response = await dio.get(
        "https://api.pexels.com/v1/search?query=$search&per_page=10&page=$page",
        options: Options(headers: {
          'Authorization':
              'Bearer 563492ad6f91700001000001d5b084efd5b34e509ee21ffc4e8f9f2b'
        }));
    print(response.data);
    return response.data;
  }
}
