part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class HomeProductWishListButtonClickEvent extends HomeBlocEvent {
  final ProductDataModel productClicked;

  HomeProductWishListButtonClickEvent({required this.productClicked});
}

class HomeProductCartButtonClickEvent extends HomeBlocEvent {
  final ProductDataModel productClicked;

  HomeProductCartButtonClickEvent({required this.productClicked});
}

class HomeWishListButtonNavigateEvent extends HomeBlocEvent {}

class HomeCartButtonNavigateEvent extends HomeBlocEvent {}

class HomeInitialEvent extends HomeBlocEvent {}
