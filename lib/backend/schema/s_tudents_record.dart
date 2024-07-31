import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class STudentsRecord extends FirestoreRecord {
  STudentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "grade" field.
  int? _grade;
  int get grade => _grade ?? 0;
  bool hasGrade() => _grade != null;

  // "guardian_name" field.
  String? _guardianName;
  String get guardianName => _guardianName ?? '';
  bool hasGuardianName() => _guardianName != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "id_number" field.
  int? _idNumber;
  int get idNumber => _idNumber ?? 0;
  bool hasIdNumber() => _idNumber != null;

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _grade = castToType<int>(snapshotData['grade']);
    _guardianName = snapshotData['guardian_name'] as String?;
    _status = snapshotData['status'] as bool?;
    _idNumber = castToType<int>(snapshotData['id_number']);
    _barcode = snapshotData['barcode'] as String?;
    _gender = snapshotData['gender'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('STudents');

  static Stream<STudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => STudentsRecord.fromSnapshot(s));

  static Future<STudentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => STudentsRecord.fromSnapshot(s));

  static STudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      STudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static STudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      STudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'STudentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is STudentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSTudentsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? grade,
  String? guardianName,
  bool? status,
  int? idNumber,
  String? barcode,
  String? gender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'grade': grade,
      'guardian_name': guardianName,
      'status': status,
      'id_number': idNumber,
      'barcode': barcode,
      'gender': gender,
    }.withoutNulls,
  );

  return firestoreData;
}

class STudentsRecordDocumentEquality implements Equality<STudentsRecord> {
  const STudentsRecordDocumentEquality();

  @override
  bool equals(STudentsRecord? e1, STudentsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.grade == e2?.grade &&
        e1?.guardianName == e2?.guardianName &&
        e1?.status == e2?.status &&
        e1?.idNumber == e2?.idNumber &&
        e1?.barcode == e2?.barcode &&
        e1?.gender == e2?.gender;
  }

  @override
  int hash(STudentsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.grade,
        e?.guardianName,
        e?.status,
        e?.idNumber,
        e?.barcode,
        e?.gender
      ]);

  @override
  bool isValidKey(Object? o) => o is STudentsRecord;
}
