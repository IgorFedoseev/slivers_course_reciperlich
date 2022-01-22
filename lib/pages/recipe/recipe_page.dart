import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/recipe_model.dart';
import '../../shared_widgets/app_bar_widget.dart';
import 'widgets/pill_widget.dart';

class RecipePage extends StatelessWidget {
  final RecipeModel recipe;

  const RecipePage(this.recipe, {Key key})
      : assert(recipe != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppBarWidget(
            text: recipe.title,
            imagePath: recipe.mainImagePath,
          ),
          // TODO: Sub Header with text title: 'Instruction'
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                recipe.instructions,
                style: const TextStyle(
                  color: AppColors.navy,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // TODO: Sub Header with text title: 'Ingredients'
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: SliverGrid.count(
              //1
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
              //2
              crossAxisCount: 3,
              //3
              childAspectRatio: 3,
              //4
              children: recipe.ingredients.map((e) => PillWidget(e)).toList(),
            ),
          ),
          // TODO: Sub Header with text title: 'Numbers'
		  // TODO: SliverGrid for recipe.details
          // TODO: SliverFillRemaining
        ],
      ),
    );
  }
}
