import 'package:flutter/material.dart';
import 'package:flutter_test_task/tabs/data.dart';

class Tabs {
  final String title;
  final Color color;

  Tabs({required this.title, required this.color});
}

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
        leading: const Icon(Icons.settings),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Рабочие пространства',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                  hintText: 'Поиск',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 59, 59, 59),
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.7,
                ),
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  final workspace = tabs[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: workspace.color,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 19,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              workspace.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
