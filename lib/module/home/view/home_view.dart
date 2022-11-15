import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tab_category_filter/module/home/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: Text('Tab Category Filter')),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                controller.category.length,
                (index) {
                  var item = controller.category[index];
                  return GestureDetector(
                    onTap: () {
                      controller.selectedCategory = index;
                      controller.update();
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black26,
                          )),
                      child: Text(
                        '${item}',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          GetBuilder<HomeController>(
            builder: (_) {
              return Container(
                height: 500,
                child: controller.navigationTabView(),
              );
            },
          ),
        ],
      ),
    );
  }
}
