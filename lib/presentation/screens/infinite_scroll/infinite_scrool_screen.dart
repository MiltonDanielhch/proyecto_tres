import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroolScreen extends StatefulWidget {
  static const name = 'infinite_screen';

  const InfiniteScroolScreen({super.key});

  @override
  State<InfiniteScroolScreen> createState() => _InfiniteScroolScreenState();
}

class _InfiniteScroolScreenState extends State<InfiniteScroolScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              image: NetworkImage(
                  'http://picsum.photos/id/${imagesIds[index]}/500/300'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}
