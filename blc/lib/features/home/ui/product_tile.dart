// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blc/features/home/bloc/home_bloc_bloc.dart';
import 'package:blc/features/home/models/product_data_model_home.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBlocBloc homeBloc;

  ProductTile({
    Key? key,
    required this.productDataModel,
    required this.homeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(productDataModel.image),
                  fit: BoxFit.contain),
            ),
            height: 220,
            width: double.maxFinite,
          ),
          Text(
            productDataModel.name,
            style: textTheme.displaySmall,
          ),
          Text(
            productDataModel.description,
            style: textTheme.labelMedium,
          ),
          // Text(productDataModel.price),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$" + productDataModel.price.toStringAsFixed(2),
                style: textTheme.headlineSmall,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      //map to bloc event & navigate to wishlist
                      homeBloc.add(HomeProductWishListButtonClickEvent(
                          productClicked: productDataModel));
                    },
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                  IconButton(
                      onPressed: () {
                        //map to bloc event & navigate to cart page
                        homeBloc.add(HomeProductCartButtonClickEvent(
                            productClicked: productDataModel));
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
