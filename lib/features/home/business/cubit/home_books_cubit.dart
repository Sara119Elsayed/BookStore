import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_books_state.dart';

class HomeBooksCubit extends Cubit<HomeBooksState> {
  HomeBooksCubit() : super(HomeBooksInitial());
}
