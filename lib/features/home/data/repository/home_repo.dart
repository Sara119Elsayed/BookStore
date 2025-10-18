import 'dart:io';

import 'package:bookstoreapp/features/home/data/model/home_model.dart';
import 'package:bookstoreapp/features/home/data/webservice/home_mongodbservice.dart';
import 'package:bookstoreapp/features/home/presentation/screens/home_screen.dart';

class HomeRepo {

final Homeservice _service = Homeservice();

Future <List<HomeModel>?> GetAllBooks()async
{
  
}

Future<HomeModel?> GetBookById()async
{

}
Future<HomeModel?> GetBookByName()async
{
   
}

}
