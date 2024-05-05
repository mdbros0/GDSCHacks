import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DiningHallsRecord extends FirestoreRecord {
  DiningHallsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "open" field.
  DateTime? _open;
  DateTime? get open => _open;
  bool hasOpen() => _open != null;

  // "close" field.
  DateTime? _close;
  DateTime? get close => _close;
  bool hasClose() => _close != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _open = snapshotData['open'] as DateTime?;
    _close = snapshotData['close'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DiningHalls');

  static Stream<DiningHallsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiningHallsRecord.fromSnapshot(s));

  static Future<DiningHallsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiningHallsRecord.fromSnapshot(s));

  static DiningHallsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiningHallsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiningHallsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiningHallsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiningHallsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiningHallsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiningHallsRecordData({
  String? name,
  String? image,
  DateTime? open,
  DateTime? close,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'open': open,
      'close': close,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiningHallsRecordDocumentEquality implements Equality<DiningHallsRecord> {
  const DiningHallsRecordDocumentEquality();

  @override
  bool equals(DiningHallsRecord? e1, DiningHallsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.open == e2?.open &&
        e1?.close == e2?.close;
  }

  @override
  int hash(DiningHallsRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.open, e?.close]);

  @override
  bool isValidKey(Object? o) => o is DiningHallsRecord;
}
