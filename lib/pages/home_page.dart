import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:splash/widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextTheme _styles = Theme.of(context).textTheme;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Restaurant App UI KIT'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dished', style: _styles.headline5),
              TextButton(
                onPressed: () {},
                child: const Text('View More'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/dish.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Salad'),
          Row(
            children: [
              RatingBar.builder(
                initialRating: 1.5,
                minRating: 0.0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                unratedColor: Colors.grey,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  debugPrint(rating.toString());
                },
              ),
              const Text('5.0 (23 Reviews)'),
            ],
          ),
          const SizedBox(height: 40),
          const Text('Food Categories'),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryWidget(
                  icon: const Icon(Icons.no_drinks),
                  title: 'Drinks',
                  subtitle: '5 Items',
                  onTap: () {
                    debugPrint('Drinks Catgeory');
                  },
                ),
                CategoryWidget(
                  icon: const Icon(Icons.no_drinks),
                  title: 'Fast Food & sea food',
                  subtitle: '13 Items',
                  onTap: () {
                    debugPrint('Fast Food & sea food Catgeory');
                  },
                ),
                CategoryWidget(
                  icon: const Icon(Icons.no_drinks),
                  title: 'Only sea food',
                  subtitle: '13 Items',
                  onTap: () {
                    debugPrint('Only sea food Catgeory');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
