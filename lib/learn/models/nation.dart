import 'package:meta/meta.dart';

class NationModel {
  final String nationName;
  final String imagePath;
  final String countryId;

  NationModel({@required this.nationName, @required this.imagePath, @required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imagePath: "assets/white_jacket.jpg", countryId: "52"),
  NationModel(nationName: "Brazil", imagePath: "assets/white_tshirt.jpg", countryId: "54"),
  NationModel(nationName: "Germany", imagePath: "assets/white_jacket.jpg", countryId: "21"),
  NationModel(nationName: "England", imagePath: "assets/new_air.jpg", countryId: "14"),
  NationModel(nationName: "France", imagePath: "assets/black_white_shirt.jpg", countryId: "18"),
  NationModel(nationName: "Italy", imagePath: "assets/jordan.jpg", countryId: "27"),
  NationModel(nationName: "Spain", imagePath: "assets/mix_color_shirt.jpg", countryId: "45")
];