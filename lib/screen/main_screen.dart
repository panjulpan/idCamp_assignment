import 'package:assignment_idcamp/model/furniture_item.dart';
import 'package:assignment_idcamp/screen/detail_furniture_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(20), // Image radius
                        child: Image.asset('assets/images/avatar.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      'Choose Your Best Furniture',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const Text(
                      'high quality furniture',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              const Flexible(
                child: FurnitureCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final Furniture furniture = furnitureList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailFurnitureScreen(
                    furniture: furniture,
                  );
                },
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(60), // Image radius
                        child: Image.asset(furniture.imageAsset,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 14,
                        right: 14,
                        bottom: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            furniture.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            furniture.type,
                            style: const TextStyle(
                              fontSize: 10.0,
                              color: Colors.black38,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            furniture.price,
                            style: const TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: furnitureList.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
