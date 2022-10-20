import 'package:praktikum/models/api/item_api.dart';
import 'package:praktikum/models/item_models.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'item_provider_test.mocks.dart';

@GenerateMocks([ItemAPI])
void main() {
  group("description gruop", () {
    ItemAPI itemAPI = MockItemAPI();
    test("description", () async {
      when(itemAPI.getItem()).thenAnswer((realInvocation) async =>
          <ItemModel>[ItemModel(id: 1, name: "name")]);
      final response = await ItemAPI().getItem();
      expect(response.isNotEmpty, true);
    });
  });
}
