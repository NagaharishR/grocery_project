class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "Oil& Dal",
    imagePath: "assets/images/categories_images/rice&oil.png",
  ),

  CategoryItem(
    name: "Masala",
    imagePath: "assets/images/categories_images/masala&dryfruit.png",
  ),
  CategoryItem(
    name: "Flour&Rice",
    imagePath: "assets/images/categories_images/rice&oil.png",
  ),

  CategoryItem(
    name: "Chips",
    imagePath: "assets/images/categories_images/chips.png",
  ),
  CategoryItem(
    name: "Packaged Foods",
    imagePath: "assets/images/categories_images/packagefoods.png",
  ),
  CategoryItem(
    name: "Tea and Coffee",
    imagePath: "assets/images/categories_images/tea&coffee.png",
  ),
  CategoryItem(
    name: "Biscuits & Cookies",
    imagePath: "assets/images/categories_images/biscuitsandcookies.png",
  ),
  CategoryItem(
    name: "Makeup & Skincare",
    imagePath: "assets/images/categories_images/face&skincare.png",
  ),
  CategoryItem(
    name: "Bath, Body, Hair",
    imagePath: "assets/images/categories_images/soap&shampoo.png",
  ),
  CategoryItem(
    name: "Cleaning Essentials",
    imagePath: "assets/images/categories_images/cleaningessentials.png",
  ),
];
