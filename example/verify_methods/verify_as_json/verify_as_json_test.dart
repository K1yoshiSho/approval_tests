import 'package:approval_tests/approval_tests.dart';
import 'package:test/test.dart';

void main() {
  test('Verify JSON output of an object', () {
    var item = Item(
      id: 1,
      name: "Widget",
      anotherItem: AnotherItem(id: 1, name: "AnotherWidget"),
      subItem: SubItem(
        id: 1,
        name: "SubWidget",
        anotherItems: [
          AnotherItem(id: 1, name: "AnotherWidget1"),
          AnotherItem(id: 2, name: "AnotherWidget2"),
        ],
      ),
    );

    ApprovalTests.verifyAsJson(
      item,
    );
  });
}

/// Item class for testing
class Item {
  final int id;
  final String name;
  final SubItem subItem;
  final AnotherItem anotherItem;

  Item({
    required this.id,
    required this.name,
    required this.subItem,
    required this.anotherItem,
  });
}

/// Sub item class for testing
class SubItem {
  final int id;
  final String name;
  final List<AnotherItem> anotherItems;

  SubItem({
    required this.id,
    required this.name,
    required this.anotherItems,
  });
}

/// Another item class for testing
class AnotherItem {
  final int id;
  final String name;

  AnotherItem({required this.id, required this.name});
}
