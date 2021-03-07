class Food{

  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id, this.name, this.imagePath, this.category, this.price,
      this.discount, this.ratings});

}

final foods = [
  Food(
    id: "1",
    name: "Hamburger de Carne",
    imagePath: "assets/images/hamburgueru.webp",
    category: "3",
    price: 180,
    discount: 0,
    ratings: 42,

  ),
  Food(
    id: "1",
    name: "Bolo de Chocolate",
    imagePath: "assets/images/bolo.jpg",
    category: "1",
    price: 1500,
    discount: 0,
    ratings: 32,

  ),

  Food(
    id: "1",
    name: "Yogurte de Branco",
    imagePath: "assets/images/iogurte.jpg",
    category: "2",
    price: 150,
    discount: 0,
    ratings: 345,

  ),


];