class Furniture {
  String name;
  String type;
  String description;
  String price;
  String imageAsset;

  Furniture({
    required this.name,
    required this.type,
    required this.description,
    required this.price,
    required this.imageAsset,
  });
}

var furnitureList = [
  Furniture(
    name: 'White Table Set',
    type: 'Lightweight',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 450.000',
    imageAsset: 'assets/images/furnitur1.jpg',
  ),
  Furniture(
    name: 'European Sofa',
    type: 'Luxury',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 750.000',
    imageAsset: 'assets/images/furnitur2.jpg',
  ),
  Furniture(
    name: 'Sofa Bed',
    type: 'Comfortable',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 2.500.000',
    imageAsset: 'assets/images/furnitur3.jpg',
  ),
  Furniture(
    name: 'Sofa Movie',
    type: 'Comfortable',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 4.500.000',
    imageAsset: 'assets/images/furnitur4.jpg',
  ),
  Furniture(
    name: 'Minimalis Bed',
    type: 'Comfortable',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 5.000.000',
    imageAsset: 'assets/images/furnitur5.jpg',
  ),
  Furniture(
    name: 'Grey Suede Chair',
    type: 'Lightweight',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    price: 'Rp 800.000',
    imageAsset: 'assets/images/furnitur6.jpg',
  ),
];
