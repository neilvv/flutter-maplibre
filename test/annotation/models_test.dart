import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maplibre/maplibre.dart';

void main() {
  group('Annotation Model Classes', () {
    test('CircleAnnotationLayer', () {
      final o = CircleAnnotationLayer(
        points: [
          Point(coordinates: Position(0, 0)),
          Point(coordinates: Position(12.4, -4)),
        ],
        color: Colors.purple,
        strokeWidth: 5,
        blur: 2.4,
        strokeColor: Colors.greenAccent,
        radius: 10,
      );
      const o2 = CircleAnnotationLayer(
        points: [],
      );
      expect(o, equals(o));
      expect(o2, equals(o2));
      expect(o, isNot(equals(o2)));
      expect(o.hashCode, equals(o.hashCode));
      expect(o.hashCode, isNot(equals(o2.hashCode)));
    });
    test('MarkerAnnotationLayer', () {
      final o = MarkerAnnotationLayer(
        points: [
          Point(coordinates: Position(0, 0)),
          Point(coordinates: Position(12.4, -4)),
        ],
        textColor: Colors.purple,
        textHaloColor: Colors.greenAccent,
        iconHaloColor: Colors.amber,
        iconColor: Colors.yellow,
        textOffset: const [2, 4],
        iconImage: 'test.png',
        textAllowOverlap: true,
        textSize: 23,
      );
      const o2 = MarkerAnnotationLayer(
        points: [],
      );
      expect(o, equals(o));
      expect(o2, equals(o2));
      expect(o, isNot(equals(o2)));
      expect(o.hashCode, equals(o.hashCode));
      expect(o.hashCode, isNot(equals(o2.hashCode)));
    });
    test('PolygonAnnotationLayer', () {
      final o = PolygonAnnotationLayer(
        polygons: [
          Polygon(
            coordinates: [
              [Position(2, 23.4), Position(5.2, 32), Position(53, 2)],
            ],
          ),
        ],
      );
      final o2 = PolygonAnnotationLayer(
        polygons: [
          Polygon(
            coordinates: [
              [Position(2, 23.4), Position(5.2, 32), Position(53, 2)],
              [Position(2, 23.4), Position(5.2, 32), Position(53, 3)],
            ],
          ),
        ],
      );
      expect(o, equals(o));
      expect(o2, equals(o2));
      expect(o, isNot(equals(o2)));
      expect(o.hashCode, equals(o.hashCode));
      expect(o.hashCode, isNot(equals(o2.hashCode)));
    });
    test('PolylineAnnotationLayer', () {
      final o = PolylineAnnotationLayer(
        polylines: [
          LineString(
            coordinates: [
              Position(2, 23.4),
              Position(5.2, 32),
              Position(53, 2),
            ],
          ),
        ],
      );
      final o2 = PolylineAnnotationLayer(
        polylines: [
          LineString(
            coordinates: [
              Position(2, 23.4),
              Position(5.2, 32),
              Position(53, 2),
            ],
          ),
        ],
      );
      expect(o, equals(o));
      expect(o2, equals(o2));
      expect(o, isNot(equals(o2)));
      expect(o.hashCode, equals(o.hashCode));
      expect(o.hashCode, isNot(equals(o2.hashCode)));
    });
  });
}
