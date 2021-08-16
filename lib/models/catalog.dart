class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}

final products = [
  Item(
    id: "1",
    name: "Indialone",
    desc: "This is a free for all",
    price: 900,
    color: "#000000",
    image:
        "https://lh3.googleusercontent.com/ogw/ADea4I7-VFRuN7lhFCp_t5D9k_MQmvI-8KG5-afVlJ7SPA=s83-c-mo",
  )
];
