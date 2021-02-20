class sliderItem {
  sliderItem({
    this.img,
    this.title,
  });

  final String img, title;

  factory sliderItem.fromJson(Map value) {
    return sliderItem(
      img: value['img'],
      title: value['title'],
    );
  }
}
