  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import 'screens/home_screen.dart'; // Import the HomeScreen.
  import 'models/recipe.dart'; // Import the Recipe model.

  void main() {
    runApp(RecipeApp()); // Start the app by running the RecipeApp widget.
  }

  // The main RecipeApp widget.
  class RecipeApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // Define a list of sample recipes.
      final List<Recipe> recipes = [
        Recipe(
          title: 'Pistachio Cake', // Recipe name.
          description: 'Nobody bakes a cake as tasty as Christine.', // Short description.
          imageUrl: 'android/assets/image/pexels-glmastudio-1633668.jpg', // Example image URL.
        ),
        Recipe(
          title: 'sugar cakes', // Recipe name.
          description: 'sweetness in every bite.', // Short description.
          imageUrl: 'android/assets/image/pexels-matvalina-20818077.jpg', // Example image URL.
        ),
      ];

      return MaterialApp(
        title: 'Recipe App', // App title shown in the device task manager.
        theme: ThemeData(primarySwatch: Colors.blue), // Set a blue theme.
        home: HomeScreen(recipes: recipes), // Set HomeScreen as the first screen.
      );
    }
  }
