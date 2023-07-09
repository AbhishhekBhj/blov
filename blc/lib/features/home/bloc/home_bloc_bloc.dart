import 'dart:async';
import 'package:blc/data/grocery_data.dart';
import 'package:blc/features/home/models/product_data_model_home.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeProductWishListButtonClickEvent>(
        homeProductWishListButtonClickEvent);
    on<HomeProductCartButtonClickEvent>(homeProductCartButtonClickEvent);

    on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeBlocState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));

    emit(
      HomeLoadedSuccessState(
        // if successfully loaded map the values of available list to model class
        products: GroceriesList.groceryProducts
            .map(
              (e) => ProductDataModel(
                e['id'],
                e['name'],
                e['brand'],
                e['price'],
                e['imageUrl'],
                e['description'],
              ),
            )
            .toList(),
      ),
    );
  }

  FutureOr<void> homeProductWishListButtonClickEvent(
      HomeProductWishListButtonClickEvent event, Emitter<HomeBlocState> emit) {
    
  }

  FutureOr<void> homeProductCartButtonClickEvent(
      HomeProductCartButtonClickEvent event, Emitter<HomeBlocState> emit) {
    
  }

  FutureOr<void> homeCartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event, Emitter<HomeBlocState> emit) {
    //emit respective state for the event

    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeWishListButtonNavigateEvent(
      HomeWishListButtonNavigateEvent event, Emitter<HomeBlocState> emit) {
    //emit respective state for the event

    emit(HomeNavigateToWishListPageActionState());
  }
}
