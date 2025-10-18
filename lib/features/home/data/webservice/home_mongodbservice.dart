import 'package:bookstoreapp/features/home/data/model/home_model.dart';
import 'package:http/http.dart' as http;
class Homeservice {

  Homeservice._internal();
  static final Homeservice _instance = Homeservice._internal();
  factory Homeservice() => _instance; 


  Future<List<HomeModel>?> getallbooks() async
  {
      try{
          
        var response = http.get(Uri.parse("http://localhost:3000/books"));

        print(response);

      }catch(err)
      {
            
      }
  }

  Future<HomeModel?> getbookbyid()async{

    try{
    }
    catch(err)
    {

    }
  }

}