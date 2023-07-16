part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishListInitialEvent extends WishlistEvent {}

class WishListRemovedEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  WishListRemovedEvent({required this.productDataModel});
}
