import 'package:flutter_test/flutter_test.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

void main() {
  test('type', () {
    const type = JsonBaselineBuilder.type;

    expect(type, 'baseline');
    expect(JsonWidgetRegistry.instance.getWidgetBuilder(type) != null, true);
    expect(
      JsonWidgetRegistry.instance.getWidgetBuilder(type)({})
          is JsonBaselineBuilder,
      true,
    );
  });
}
