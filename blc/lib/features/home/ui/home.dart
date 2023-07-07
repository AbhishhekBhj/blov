import 'package:blc/features/home/bloc/home_bloc_bloc.dart';
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
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBlocBloc,
      // listenWhen: (previous, current) =>null ,
      // buildWhen: (previous, current) => ,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Hamro Kirana Pasal"),
            actions: [
              IconButton(
                onPressed: () {
                  homeBlocBloc.add(HomeWishListButtonNavigateEvent());
                },
                icon: Icon(Icons.favorite_border_outlined),
              ),
              IconButton(
                  onPressed: () {
                    homeBlocBloc.add(HomeCartButtonNavigateEvent());
                  },
                  icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
    );
  }
}
