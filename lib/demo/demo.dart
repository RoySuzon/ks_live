import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoScreen extends StatelessWidget {
  DemoScreen({super.key});
  final MyController c = Get.find();
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        title: Text('Course '),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 200, child: Text('Books')),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            c.decementBooks();
                          },
                          icon: Icon(Icons.remove)),
                      Obx(
                        () => Text(c.books.value.toString()),
                      ),
                      IconButton(
                          onPressed: () {
                            c.incremenBooks();
                          },
                          icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 200, child: Text('Pens')),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            c.decementPens('Pens');
                          },
                          icon: Icon(Icons.remove)),
                      Obx(
                        () => Text(c.pens.value.toString()),
                      ),
                      IconButton(
                          onPressed: () {
                            c.incrementPens();
                          },
                          icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  Get.to(TotalScreen());
                },
                child: Text('CALCULATE ALL ITEM')),
            // Obx(() => Text(c.sumOfall.toString())),
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  RxInt pens = 0.obs;
  RxInt books = 0.obs;
  int get sumOfall => pens.value + books.value;
  incrementPens() {
    pens.value++;
  }

  decementPens(String title) {
    if (pens.value <= 0) {
      Get.snackbar('Buying $title', 'Can not less than zero',
          icon: Icon(Icons.alarm));
    } else {
      pens.value--;
    }
  }

  incremenBooks() {
    books.value++;
  }

  decementBooks() {
    if (books.value <= 0) {
      Get.snackbar('Buying Book', 'Can not less than zero',
          icon: Icon(Icons.alarm));
    } else {
      books.value--;
    }
  }
}

class TotalScreen extends StatelessWidget {
  const TotalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MyController c = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(c.sumOfall.toString()),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
