import 'package:dio/dio.dart';
import 'package:la_vie_app/constants.dart';

class UsersApi {
  getUserData() async {
    var data = '';
    try {
      var response = await Dio(
        BaseOptions(
          headers: {
            "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxOGFjZTY5ZS1hMWE0LTQ3NDctYmYyZS1kZWExZDRlN2E0YzciLCJpYXQiOjE2NjEwNzI3MDIsImV4cCI6MTY2MTI0NTUwMn0.Q2KGjTyIN65RISbggpmt9cyHcBK6jXscmaEV6wlL-Ks"
          },
        ),
      ).get('$baseUrl/api/v1/user/me').then((value) {
        if(value.statusCode == 200){
          data = value.data['data'];
        }
      },);
      print(data);
      return data;
    } catch (e) {
      if(e is DioError){
        print(e.response);
      }
      print(e);
    }
  }
}
