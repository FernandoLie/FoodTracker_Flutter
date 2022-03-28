import 'package:flutter/material.dart';
import 'package:food_tracker/components/dropdown_jadwalmakan.dart';
import 'package:food_tracker/constanta.dart';
import 'package:food_tracker/pages/food_page.dart';
import 'package:food_tracker/model/recipe.dart';
import 'package:food_tracker/model/recipe_api.dart';
import 'package:food_tracker/components/card_recipe.dart';

class ListFood extends StatefulWidget {
  const ListFood({Key? key}) : super(key: key);

  @override
  State<ListFood> createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: greendefault(),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              bottom: const TabBar(
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  Tab(child: Text('COOK BOOK', style: TextStyle(fontSize: 11))),
                  Tab(child: Text('RECIPES', style: TextStyle(fontSize: 11))),
                  Tab(child: Text('FOOD', style: TextStyle(fontSize: 11))),
                  Tab(
                      child: Text('RECENTLY EATED',
                          style: TextStyle(fontSize: 11))),
                ],
              ),
              title: const DropdownJadwal()),
          body: TabBarView(
            children: [
              Center(child: Text('page 1')),
              _isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: _recipes.length,
                      itemBuilder: (context, index) {
                        return RecipeCard(
                            title: _recipes[index].name,
                            cookTime: _recipes[index].totalTime,
                            rating: _recipes[index].rating.toString(),
                            thumbnailUrl: _recipes[index].images);
                      },
                    ),
              FoodPage(),
              Center(child: Text('page 4')),
            ],
          ),
        ),
      ),
    );
  }
}
