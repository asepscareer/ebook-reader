class Responsive {
  final double width;

  Responsive(this.width);

  bool isMobile() {
    return width <= 600;
  }

  bool isTablet() {
    return width > 600 && width <= 1024;
  }

  bool isPC() {
    return width > 1024;
  }
}
