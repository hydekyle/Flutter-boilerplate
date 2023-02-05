import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppController extends GetxController {
  late final SharedPreferences storage;
  final username = "Ayoze".obs;

  init() async {
    storage = await SharedPreferences.getInstance();
    // _loadUserPreferences();
  }

  // _loadUserPreferences() {
  //   if (storage.containsKey("selected-price-view")) {
  //     final _priceViewType = storage.getString("selected-price-view")!;
  //     selectedGraphicType.value =
  //         EnumToString.fromString(GraphicType.values, _priceViewType)!;
  //   }
  //   if (storage.containsKey("selected-region")) {
  //     final _regionZone = storage.getString("selected-region")!;
  //     selectedRegionZone.value =
  //         EnumToString.fromString(RegionZone.values, _regionZone)!;
  //   }
  // }

  static saveUserPreference(String key, String value) {
    final box = Get.find<AppController>();
    box.storage.setString(key, value);
  }
}
