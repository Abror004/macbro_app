// class  {
//   late final ;
//
//   .fromJson(Map<String, dynamic> json) {
//     active = json['active'];
//   }
// }

enum Categories { fresh, recommend, discounts }

class Post {
  late final bool discount;
  late final double discountCost;
  late final String image;
  late final String name;
  late final String cost;
  late final Categories category;
  late bool follow;

  Post(
      {required this.discount,
      required this.discountCost,
      required this.image,
      required this.name,
      required this.cost,
      required this.category,
      required this.follow});
}
