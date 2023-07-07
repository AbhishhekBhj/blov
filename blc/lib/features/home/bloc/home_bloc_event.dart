part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class HomeProductWishListButtonClickEvent extends HomeBlocEvent {}

class HomeProductCartButtonClickEvent extends HomeBlocEvent {}

class HomeWishListButtonNavigateEvent extends HomeBlocEvent {}

class HomeCartButtonNavigateEvent extends HomeBlocEvent {}
