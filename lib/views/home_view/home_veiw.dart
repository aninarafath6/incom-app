
import 'home_view.index.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  static const String routeName = '/homeScreen';
  final TabBarController controller = Get.put(TabBarController());

  final List<Widget> pages = [
    DiscoveryScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
        onPageChanged: (int index) {
          controller.selectedIndex.value = index;
        },
      ),
    );
  }
}



      // body: Column(
      //   children: [
      //     const HomeAppBar(),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: AppColors.pink,
      //       ),
      //     ),
      //   ],
      // ),