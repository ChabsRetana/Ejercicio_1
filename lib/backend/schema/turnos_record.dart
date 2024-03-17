import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurnosRecord extends FirestoreRecord {
  TurnosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "estatus" field.
  int? _estatus;
  int get estatus => _estatus ?? 0;
  bool hasEstatus() => _estatus != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _area = snapshotData['area'] as String?;
    _estatus = castToType<int>(snapshotData['estatus']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('turnos');

  static Stream<TurnosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TurnosRecord.fromSnapshot(s));

  static Future<TurnosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TurnosRecord.fromSnapshot(s));

  static TurnosRecord fromSnapshot(DocumentSnapshot snapshot) => TurnosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TurnosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TurnosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TurnosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TurnosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTurnosRecordData({
  String? descripcion,
  String? titulo,
  DateTime? fecha,
  String? area,
  int? estatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'titulo': titulo,
      'fecha': fecha,
      'area': area,
      'estatus': estatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class TurnosRecordDocumentEquality implements Equality<TurnosRecord> {
  const TurnosRecordDocumentEquality();

  @override
  bool equals(TurnosRecord? e1, TurnosRecord? e2) {
    return e1?.descripcion == e2?.descripcion &&
        e1?.titulo == e2?.titulo &&
        e1?.fecha == e2?.fecha &&
        e1?.area == e2?.area &&
        e1?.estatus == e2?.estatus;
  }

  @override
  int hash(TurnosRecord? e) => const ListEquality()
      .hash([e?.descripcion, e?.titulo, e?.fecha, e?.area, e?.estatus]);

  @override
  bool isValidKey(Object? o) => o is TurnosRecord;
}
