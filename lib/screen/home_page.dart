import 'package:fashion_app/constant/app_constant.dart';
import 'package:fashion_app/widgets/home_page_widgets/list_tab_view.dart';
import 'package:fashion_app/widgets/home_page_widgets/person_posts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Fashion App",
          style: Constant.contentText,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt))
        ],
      ),
      body: ListView(
        children: const [
          ListPerson(),
          PersonPosts(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          tabs: const [
            Tab(icon: Icon(Icons.more, color: Constant.iconColor, size: 25)),
            Tab(
                icon: Icon(Icons.play_arrow,
                    color: Constant.iconColor, size: 25)),
            Tab(
                icon: Icon(Icons.navigation,
                    color: Constant.iconColor, size: 25)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Constant.iconColor, size: 25)),
          ],
        ),
      ),
    );
  }
}
