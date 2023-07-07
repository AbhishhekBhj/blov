part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

abstract class HomeActionState extends HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {}

//loading bar showing until data is fetched from server
class HomeLoadingState extends HomeBlocState {}

class HomeLoadedSuccessState extends HomeBlocState {
  final List<ProductDataModel> products;
  HomeLoadedSuccessState({required this.products});
}

//if errors
class HomeErrorState extends HomeBlocState {}

class HomeNavigateToWishListPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}
