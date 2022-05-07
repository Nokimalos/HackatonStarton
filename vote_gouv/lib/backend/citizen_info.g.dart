// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citizen_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CitizenInfoAdapter extends TypeAdapter<CitizenInfo> {
  @override
  final int typeId = 1;

  @override
  CitizenInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CitizenInfo(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CitizenInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.nss)
      ..writeByte(3)
      ..write(obj.isVoted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CitizenInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
