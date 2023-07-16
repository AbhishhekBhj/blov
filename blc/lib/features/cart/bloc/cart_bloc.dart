import 'dart:async';

import 'package:blc/data/cart_items.dart';
import 'package:blc/features/home/models/product_data_model_home.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemovedEvent>(cartRemovedEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSucessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemovedEvent(
      CartRemovedEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.productDataModel);
// emit()
    emit(CartSucessState(cartItems: cartItems));
  }
}
