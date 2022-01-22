import 'package:flutter/material.dart';
import 'package:reciperlich/data/recipe_repository.dart';
import 'widgets/recipe_item_widget.dart';
import '../../constants/app_image_paths.dart';
import '../../shared_widgets/app_bar_widget.dart';
import 'widgets/footer_widget.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    final recipes = RecipeRepository.getRecipes();

    return Scaffold(
      // 2
      body: CustomScrollView(
        // 3
        slivers: <Widget>[
          const AppBarWidget(
            text: 'Reciperlich',
            imagePath: AppImagePaths.mainImage,
            centerTitle: true,
          ),
          // 4
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              // 5
              itemExtent: 110, // высота плитки
              // 6
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    // 7
                    child: RecipeItem(recipes[index])),
                childCount: recipes.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
