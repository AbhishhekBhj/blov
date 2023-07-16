import 'dart:async';

import 'package:blc/data/wishlist_items.dart';
import 'package:blc/features/home/models/product_data_model_home.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishListInitialEvent>(wishlistInitalEvent);
    on<WishListRemovedEvent>(wishListRemovedEvent);
  }

  FutureOr<void> wishlistInitalEvent(
      WishListInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessState(wishListItems: wishList));
  }

  FutureOr<void> wishListRemovedEvent(
      WishListRemovedEvent event, Emitter<WishlistState> emit) {
    wishList.remove(event.productDataModel);
    emit(WishlistSuccessState(wishListItems: wishList));
  }
}
