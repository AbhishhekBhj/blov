import 'package:blc/features/cart/ui/cart.dart';
import 'package:blc/features/home/bloc/home_bloc_bloc.dart';
import 'package:blc/features/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBlocBloc homeBlocBloc = HomeBlocBloc();
  @override
  void initState() {
    homeBlocBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //handles events and the states
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBlocBloc,
      listenWhen: (previous, current) => current
          is HomeActionState, //take action when the state is homeactionstate
      buildWhen: (previous, current) =>
          current is! HomeActionState, //build ui if not homeactionstate
      listener: (context, state) {
        //if this state
        if (state is HomeNavigateToCartPageActionState) {
          //navigate towards cart page
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ));
        }

        //if this state
        else if (state is HomeNavigateToWishListPageActionState) {
          //navigate towards wishilist page
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WishlistPage(),
              ));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          //if loading state
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
            break;
          //if successfully loaded
          case HomeLoadedSuccessState:
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepPurpleAccent,
                title: Text("Hamro Kirana Pasal"),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {
                      //map to bloc event & navigate to wishlist
                      homeBlocBloc.add(HomeWishListButtonNavigateEvent());
                    },
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                  IconButton(
                      onPressed: () {
                        //map to bloc event & navigate to cart page

                        homeBlocBloc.add(HomeCartButtonNavigateEvent());
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                      ))
                ],
              ),
            );
            break;
          case HomeErrorState:
            return Scaffold(
              body: Center(
                child: Text(
                  "Error!",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            );
          default:
            return Container();
        }
        print(state.runtimeType);
      },
    );
  }
}
