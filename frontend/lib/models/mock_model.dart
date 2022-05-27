// this is a mockup class for UI testing
// we will use a tool chain to generate code for this class later
class Product {
  int id;
  String title;
  String description;
  double price;
  int categoryId;
  List<String> imageUrls;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.imageUrls,
  });
}

class Category {
  int id;
  String title;
  String imageUrl;
  Category({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

List<Category> listCategory = <Category>[
  Category(id: 1, title: "Category 1", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
  Category(id: 2, title: "Category 2", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
  Category(id: 3, title: "Category 3", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
  Category(id: 4, title: "Category 4", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
  Category(id: 5, title: "Category 5", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
  Category(id: 6, title: "Category 6", imageUrl: "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image"),
];

List<Product> listProduct = <Product>[
  // category 1
  Product(
    id: 1,
    title: "product 1",
    description:
        "Incididunt sit id consequat non do laborum exercitation. Eu ut in officia dolore Lorem anim tempor occaecat amet sunt.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 2,
    title: "product 2",
    description:
        "Fugiat aliquip enim aliquip exercitation. Ad qui sint sunt dolor ut aliqua sit nostrud sit cupidatat commodo non cillum.",
    price: 20.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 3,
    title: "product 3",
    description: "Fugiat aliquip enim aliquip exercitation. Amet magna anim ipsum commodo est ea eu tempor nisi id.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 4,
    title: "product 4",
    description:
        "Officia nulla labore et minim mollit consequat voluptate eiusmod anim. Ex anim sit dolor nisi dolor excepteur.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 5,
    title: "product 5",
    description:
        "Veniam officia commodo cillum consequat velit laboris aliquip labore mollit cupidatat in laboris cupidatat.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 6,
    title: "product 6",
    description:
        "Pariatur velit enim exercitation non ad do adipisicing tempor incididunt. Sit irure dolore consectetur incididunt reprehenderit ex deserunt adipisicing excepteur elit nostrud tempor.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 7,
    title: "product 7",
    description: "Nulla qui dolore quis incididunt reprehenderit ad do ut aute culpa labore proident ut exercitation.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 8,
    title: "product 8",
    description:
        "Elit mollit dolor eu ad. Elit tempor tempor ut non amet cillum. Dolore est est qui fugiat aliqua et excepteur in commodo ullamco cillum reprehenderit amet minim.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 9,
    title: "product 9",
    description:
        "Velit aliqua nostrud consectetur excepteur ad exercitation consectetur mollit in nulla occaecat cupidatat nulla minim.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 10,
    title: "product 10",
    description: "Aliquip officia laborum est occaecat ipsum nostrud Lorem. Deserunt occaecat non id cupidatat.",
    price: 10.0,
    categoryId: 1,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  // category 2
  Product(
    id: 21,
    title: "product 21",
    description:
        "Incididunt sit id consequat non do laborum exercitation. Eu ut in officia dolore Lorem anim tempor occaecat amet sunt.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 22,
    title: "product 22",
    description:
        "Fugiat aliquip enim aliquip exercitation. Ad qui sint sunt dolor ut aliqua sit nostrud sit cupidatat commodo non cillum.",
    price: 20.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 23,
    title: "product 23",
    description: "Fugiat aliquip enim aliquip exercitation. Amet magna anim ipsum commodo est ea eu tempor nisi id.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 24,
    title: "product 24",
    description:
        "Officia nulla labore et minim mollit consequat voluptate eiusmod anim. Ex anim sit dolor nisi dolor excepteur.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 25,
    title: "product 25",
    description:
        "Veniam officia commodo cillum consequat velit laboris aliquip labore mollit cupidatat in laboris cupidatat.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 26,
    title: "product 26",
    description:
        "Pariatur velit enim exercitation non ad do adipisicing tempor incididunt. Sit irure dolore consectetur incididunt reprehenderit ex deserunt adipisicing excepteur elit nostrud tempor.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 27,
    title: "product 27",
    description: "Nulla qui dolore quis incididunt reprehenderit ad do ut aute culpa labore proident ut exercitation.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 28,
    title: "product 28",
    description:
        "Elit mollit dolor eu ad. Elit tempor tempor ut non amet cillum. Dolore est est qui fugiat aliqua et excepteur in commodo ullamco cillum reprehenderit amet minim.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 29,
    title: "product 29",
    description:
        "Velit aliqua nostrud consectetur excepteur ad exercitation consectetur mollit in nulla occaecat cupidatat nulla minim.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 30,
    title: "product 30",
    description: "Aliquip officia laborum est occaecat ipsum nostrud Lorem. Deserunt occaecat non id cupidatat.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  // category 3
  Product(
    id: 31,
    title: "product 31",
    description:
        "Incididunt sit id consequat non do laborum exercitation. Eu ut in officia dolore Lorem anim tempor occaecat amet sunt.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 32,
    title: "product 32",
    description:
        "Fugiat aliquip enim aliquip exercitation. Ad qui sint sunt dolor ut aliqua sit nostrud sit cupidatat commodo non cillum.",
    price: 20.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 33,
    title: "product 33",
    description: "Fugiat aliquip enim aliquip exercitation. Amet magna anim ipsum commodo est ea eu tempor nisi id.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 34,
    title: "product 34",
    description:
        "Officia nulla labore et minim mollit consequat voluptate eiusmod anim. Ex anim sit dolor nisi dolor excepteur.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 35,
    title: "product 35",
    description:
        "Veniam officia commodo cillum consequat velit laboris aliquip labore mollit cupidatat in laboris cupidatat.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 36,
    title: "product 36",
    description:
        "Pariatur velit enim exercitation non ad do adipisicing tempor incididunt. Sit irure dolore consectetur incididunt reprehenderit ex deserunt adipisicing excepteur elit nostrud tempor.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 37,
    title: "product 37",
    description: "Nulla qui dolore quis incididunt reprehenderit ad do ut aute culpa labore proident ut exercitation.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 38,
    title: "product 38",
    description:
        "Elit mollit dolor eu ad. Elit tempor tempor ut non amet cillum. Dolore est est qui fugiat aliqua et excepteur in commodo ullamco cillum reprehenderit amet minim.",
    price: 10.0,
    categoryId: 2,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 39,
    title: "product 39",
    description:
        "Velit aliqua nostrud consectetur excepteur ad exercitation consectetur mollit in nulla occaecat cupidatat nulla minim.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
  Product(
    id: 40,
    title: "product 40",
    description: "Aliquip officia laborum est occaecat ipsum nostrud Lorem. Deserunt occaecat non id cupidatat.",
    price: 10.0,
    categoryId: 3,
    imageUrls: [
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
      "http://placehold.jp/ffae00/ffffff/400x400.png?text=sample%20image",
    ],
  ),
];
