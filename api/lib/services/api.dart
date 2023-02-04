import 'package:http/http.dart';

class Api{




  Future<Response> getUsersList(){
    return get( "https://jsonplaceholder.typicode.com/users" );
  }



}