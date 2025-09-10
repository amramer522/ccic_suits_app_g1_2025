part of 'view.dart';

class _Model {
  final String image, title;
  final String? description;

  _Model({
    required this.image,
    required this.title,
    this.description,
  });
}

final _list = [
  _Model(
    image: "on_boarding0.jpg",
    title: "Welcome To\nFashion",
    description: "Discover the latest trends and exclusive styles\nfrom our top designers",
  ),
  _Model(
    image: "on_boarding1.jpg",
    title: "Explore & Shop",
    description: "Discover a wide range of fashion categories,\nbrowse new arrivals and shop your favourites",
  ),
  _Model(
    image: "on_boarding2.jpg",
    title: "Hi,Shop Now",
  ),
];
