import 'package:get/get.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_America': {'hello': 'Hello'},
        'kr_Korea': {'hello': '안녕하세요'},
      };
}
