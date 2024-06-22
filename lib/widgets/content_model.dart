class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Pick your food from our menu\n          More than 35 times',
      image: "assets/images/screen1.png", // Updated path
      title: 'Select from Our\n       Best Menu'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and\n     Card payment is available',
      image: "assets/images/screen2.png", // Updated path
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description: 'Deliver your food at your\n               Doorstep',
      image: "assets/images/screen3.png", // Updated path
      title: 'Quick Delivery at\n    Your Doorstep')
];
