class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "Organic Bananas",
      description: "7pcs, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/banana.png"),
  GroceryItem(
      id: 2,
      name: "Red Apple",
      description: "1kg, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/apple.png"),
  GroceryItem(
      id: 3,
      name: "Bell Pepper Red",
      description: "1kg, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/pepper.png"),
  GroceryItem(
      id: 4,
      name: "Ginger",
      description: "250gm, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/ginger.png"),
  GroceryItem(
      id: 5,
      name: "Meat",
      description: "250gm, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/beef.png"),
  GroceryItem(
      id: 6,
      name: "Chicken",
      description: "250gm, Priceg",
      price: 4.99,
      imagePath: "assets/images/grocery_images/chicken.png"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var rice = [
  GroceryItem(
      id: 7,
      name: "Wheatflour",
      description: "500gm, Price",
      price: 25,
      imagePath: "assets/images/flour_images/attaflour.png"),
  GroceryItem(
      id: 8,
      name: "Cornflour",
      description: "500gm, Price",
      price: 20,
      imagePath: "assets/images/flour_images/cornflour.png"),
  GroceryItem(
      id: 9,
      name: "Rice",
      description: "1Kg, Price",
      price: 50,
      imagePath: "assets/images/flour_images/rice.png"),
  GroceryItem(
      id: 10,
      name: "Karuppukavuni Rice",
      description: "1kg, Price",
      price: 100,
      imagePath: "assets/images/flour_images/karuppukavunirice.png"),
  GroceryItem(
      id: 11,
      name: "Dal",
      description: "500gm, Price",
      price: 50,
      imagePath: "assets/images/flour_images/dal.png"),
  GroceryItem(
      id: 12,
      name: "Oil",
      description: "1L, Price",
      price: 100,
      imagePath: "assets/images/flour_images/oil.png"),
];
var oil = [
  GroceryItem(
      id: 7,
      name: "Wheatflour",
      description: "500gm, Price",
      price: 25,
      imagePath: "assets/images/flour_images/attaflour.png"),
  GroceryItem(
      id: 8,
      name: "Cornflour",
      description: "500gm, Price",
      price: 20,
      imagePath: "assets/images/flour_images/cornflour.png"),
  GroceryItem(
      id: 9,
      name: "Rice",
      description: "1Kg, Price",
      price: 50,
      imagePath: "assets/images/flour_images/rice.png"),
  GroceryItem(
      id: 10,
      name: "Karuppukavuni Rice",
      description: "1kg, Price",
      price: 100,
      imagePath: "assets/images/flour_images/karuppukavunirice.png"),
  GroceryItem(
      id: 11,
      name: "Dal",
      description: "500gm, Price",
      price: 50,
      imagePath: "assets/images/flour_images/dal.png"),
  GroceryItem(
      id: 12,
      name: "Oil",
      description: "1L, Price",
      price: 100,
      imagePath: "assets/images/flour_images/oil.png"),
];
var masalas = [
  GroceryItem(
      id: 13,
      name: "Chicken Masala",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/masala_images/chicken.png"),
  GroceryItem(
      id: 14,
      name: "Chilli Powder",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/masala_images/chilli.png"),
  GroceryItem(
      id: 15,
      name: "Fish Masala",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/masala_images/fish.png"),
  GroceryItem(
      id: 16,
      name: "Garam Masala",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/masala_images/garammasala.png"),
  ];
var Chips = [
  GroceryItem(
      id: 17,
      name: "Banana Chips",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/chips_images/bananachips.png"),
  GroceryItem(
      id: 18,
      name: "Bingo",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/chips_images/bingo.png"),
  GroceryItem(
      id: 19,
      name: "Diamond Chips",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/chips_images/diamondchips.png"),
  GroceryItem(
      id: 20,
      name: "Lays",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/chips_images/lays.png"),
  GroceryItem(
      id: 21,
      name: "Too Yumm",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/chips_images/tooyummchips.png"),
];
var foods = [
  GroceryItem(
      id: 22,
      name: "Apple Juice",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  GroceryItem(
      id: 23,
      name: "Cocacola",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/coca_cola.png"),
  GroceryItem(
      id: 24,
      name: "Sprite",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/sprite.png"),
  GroceryItem(
      id: 25,
      name: "Orange Juice",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  GroceryItem(
      id: 26,
      name: "Pepsi",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/pepsi.png"),
];
var teacoffee = [
  GroceryItem(
      id: 27,
      name: "Coffee",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/teacoffee/coffee.png"),
  GroceryItem(
      id: 28,
      name: "Filter Coffee",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/teacoffee/filtercoffee.png"),
  GroceryItem(
      id: 29,
      name: "Green Tea",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/teacoffee/greentea.png"),
  GroceryItem(
      id: 30,
      name: "Masala Tea",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/teacoffee/masalatea.png"),
  GroceryItem(
      id: 31,
      name: "Tea",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/teacoffee/tea.png"),
];
var biscuits = [
  GroceryItem(
      id: 32,
      name: "Cookies",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/cookies_images/cookies.png"),
  GroceryItem(
      id: 33,
      name: "GoodDay",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/cookies_images/goodday.png"),
  GroceryItem(
      id: 34,
      name: "Hide and Seek",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/cookies_images/hideandseek.png"),
  GroceryItem(
      id: 35,
      name: "Marielight",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/cookies_images/marielight.png"),
  GroceryItem(
      id: 36,
      name: "Unibic",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/cookies_images/unibic.png"),
];
var makeups = [
  GroceryItem(
      id: 37,
      name: "Makeup1",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/skincare_images/skincare1.png"),
  GroceryItem(
      id: 38,
      name: "Makeup2",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/skincare_images/skincare2.png"),
  GroceryItem(
      id: 39,
      name: "Makeup3",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/skincare_images/skincare3.png"),
  GroceryItem(
      id: 40,
      name: "Makeup4",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/skincare_images/skincare4.png"),
  GroceryItem(
      id: 41,
      name: "Skincare",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/skincare_images/skincare5.png"),
];
var soapshampoo = [
  GroceryItem(
      id: 42,
      name: "Babysoap",
      description: "1pkt, Price",
      price: 48,
      imagePath: "assets/images/soap_images/babysoap.png"),
  GroceryItem(
      id: 43,
      name: "Handwash",
      description: "500ml, Price",
      price: 49,
      imagePath: "assets/images/soap_images/handwash.png"),
  GroceryItem(
      id: 44,
      name: "Lotion",
      description: "340ml, Price",
      price: 69,
      imagePath: "assets/images/soap_images/lotion.png"),
  GroceryItem(
      id: 45,
      name: "Shampoo",
      description: "100ml, Price",
      price: 50,
      imagePath: "assets/images/soap_images/shampoo.png"),
  GroceryItem(
      id: 46,
      name: "Soap",
      description: "1pkt, Price",
      price: 40,
      imagePath: "assets/images/soap_images/soap.png"),
];
var cleaningEssentials = [
  GroceryItem(
      id: 47,
      name: "Harpic",
      description: "500ml, Price",
      price: 70,
      imagePath: "assets/images/cleaningessential/cleaning1.jpeg"),
  GroceryItem(
      id: 48,
      name: "Matic",
      description: "330ml, Price",
      price: 49,
      imagePath: "assets/images/cleaningessential/cleaning2.png"),
  GroceryItem(
      id: 49,
      name: "Pril",
      description: "250ml, Price",
      price: 40,
      imagePath: "assets/images/cleaningessential/cleaning3.png"),
  GroceryItem(
      id: 50,
      name: "Domax",
      description: "500ml, Price",
      price: 69,
      imagePath: "assets/images/cleaningessential/cleaning4.png"),
  GroceryItem(
      id: 51,
      name: "lizol",
      description: "300ml, Price",
      price: 45,
      imagePath: "assets/images/cleaningessential/cleaning5.png"),
];