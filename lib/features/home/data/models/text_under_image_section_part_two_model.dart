class TextUnderImageSectionPartTwoModel {
  final String title;
  final String price;
  final String containerTitle;
  final String containerImage;
  final String? priceImage;

  const TextUnderImageSectionPartTwoModel({
    required this.title,
    required this.price,
    required this.containerTitle,
    required this.containerImage,
    this.priceImage,
  });
}
