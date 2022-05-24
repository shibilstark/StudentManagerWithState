// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res> implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  final StudentEvent _value;
  // ignore: unused_field
  final $Res Function(StudentEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$StudentEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'StudentEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements StudentEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$AddStudentCopyWith<$Res> {
  factory _$$AddStudentCopyWith(
          _$AddStudent value, $Res Function(_$AddStudent) then) =
      __$$AddStudentCopyWithImpl<$Res>;
  $Res call({StudentModel model});
}

/// @nodoc
class __$$AddStudentCopyWithImpl<$Res> extends _$StudentEventCopyWithImpl<$Res>
    implements _$$AddStudentCopyWith<$Res> {
  __$$AddStudentCopyWithImpl(
      _$AddStudent _value, $Res Function(_$AddStudent) _then)
      : super(_value, (v) => _then(v as _$AddStudent));

  @override
  _$AddStudent get _value => super._value as _$AddStudent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddStudent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudent implements AddStudent {
  const _$AddStudent({required this.model});

  @override
  final StudentModel model;

  @override
  String toString() {
    return 'StudentEvent.addStudent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      __$$AddStudentCopyWithImpl<_$AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return addStudent(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return addStudent?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AddStudent implements StudentEvent {
  const factory AddStudent({required final StudentModel model}) = _$AddStudent;

  StudentModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllStudentsCopyWith<$Res> {
  factory _$$ClearAllStudentsCopyWith(
          _$ClearAllStudents value, $Res Function(_$ClearAllStudents) then) =
      __$$ClearAllStudentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllStudentsCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$ClearAllStudentsCopyWith<$Res> {
  __$$ClearAllStudentsCopyWithImpl(
      _$ClearAllStudents _value, $Res Function(_$ClearAllStudents) _then)
      : super(_value, (v) => _then(v as _$ClearAllStudents));

  @override
  _$ClearAllStudents get _value => super._value as _$ClearAllStudents;
}

/// @nodoc

class _$ClearAllStudents implements ClearAllStudents {
  const _$ClearAllStudents();

  @override
  String toString() {
    return 'StudentEvent.clearAllStudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllStudents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return clearAllStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return clearAllStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (clearAllStudents != null) {
      return clearAllStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return clearAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return clearAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (clearAllStudents != null) {
      return clearAllStudents(this);
    }
    return orElse();
  }
}

abstract class ClearAllStudents implements StudentEvent {
  const factory ClearAllStudents() = _$ClearAllStudents;
}

/// @nodoc
abstract class _$$RemoveStudentCopyWith<$Res> {
  factory _$$RemoveStudentCopyWith(
          _$RemoveStudent value, $Res Function(_$RemoveStudent) then) =
      __$$RemoveStudentCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$RemoveStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$RemoveStudentCopyWith<$Res> {
  __$$RemoveStudentCopyWithImpl(
      _$RemoveStudent _value, $Res Function(_$RemoveStudent) _then)
      : super(_value, (v) => _then(v as _$RemoveStudent));

  @override
  _$RemoveStudent get _value => super._value as _$RemoveStudent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$RemoveStudent(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveStudent implements RemoveStudent {
  const _$RemoveStudent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'StudentEvent.removeStudent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveStudent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$RemoveStudentCopyWith<_$RemoveStudent> get copyWith =>
      __$$RemoveStudentCopyWithImpl<_$RemoveStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return removeStudent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return removeStudent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (removeStudent != null) {
      return removeStudent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return removeStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return removeStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (removeStudent != null) {
      return removeStudent(this);
    }
    return orElse();
  }
}

abstract class RemoveStudent implements StudentEvent {
  const factory RemoveStudent({required final int index}) = _$RemoveStudent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RemoveStudentCopyWith<_$RemoveStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllStudentsCopyWith<$Res> {
  factory _$$GetAllStudentsCopyWith(
          _$GetAllStudents value, $Res Function(_$GetAllStudents) then) =
      __$$GetAllStudentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStudentsCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$GetAllStudentsCopyWith<$Res> {
  __$$GetAllStudentsCopyWithImpl(
      _$GetAllStudents _value, $Res Function(_$GetAllStudents) _then)
      : super(_value, (v) => _then(v as _$GetAllStudents));

  @override
  _$GetAllStudents get _value => super._value as _$GetAllStudents;
}

/// @nodoc

class _$GetAllStudents implements GetAllStudents {
  const _$GetAllStudents();

  @override
  String toString() {
    return 'StudentEvent.getAllStudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStudents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return getAllStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return getAllStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return getAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return getAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (getAllStudents != null) {
      return getAllStudents(this);
    }
    return orElse();
  }
}

abstract class GetAllStudents implements StudentEvent {
  const factory GetAllStudents() = _$GetAllStudents;
}

/// @nodoc
abstract class _$$EditStudentCopyWith<$Res> {
  factory _$$EditStudentCopyWith(
          _$EditStudent value, $Res Function(_$EditStudent) then) =
      __$$EditStudentCopyWithImpl<$Res>;
  $Res call({StudentModel modle, int index});
}

/// @nodoc
class __$$EditStudentCopyWithImpl<$Res> extends _$StudentEventCopyWithImpl<$Res>
    implements _$$EditStudentCopyWith<$Res> {
  __$$EditStudentCopyWithImpl(
      _$EditStudent _value, $Res Function(_$EditStudent) _then)
      : super(_value, (v) => _then(v as _$EditStudent));

  @override
  _$EditStudent get _value => super._value as _$EditStudent;

  @override
  $Res call({
    Object? modle = freezed,
    Object? index = freezed,
  }) {
    return _then(_$EditStudent(
      modle: modle == freezed
          ? _value.modle
          : modle // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditStudent implements EditStudent {
  const _$EditStudent({required this.modle, required this.index});

  @override
  final StudentModel modle;
  @override
  final int index;

  @override
  String toString() {
    return 'StudentEvent.editStudent(modle: $modle, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStudent &&
            const DeepCollectionEquality().equals(other.modle, modle) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(modle),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$EditStudentCopyWith<_$EditStudent> get copyWith =>
      __$$EditStudentCopyWithImpl<_$EditStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(StudentModel model) addStudent,
    required TResult Function() clearAllStudents,
    required TResult Function(int index) removeStudent,
    required TResult Function() getAllStudents,
    required TResult Function(StudentModel modle, int index) editStudent,
  }) {
    return editStudent(modle, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
  }) {
    return editStudent?.call(modle, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(StudentModel model)? addStudent,
    TResult Function()? clearAllStudents,
    TResult Function(int index)? removeStudent,
    TResult Function()? getAllStudents,
    TResult Function(StudentModel modle, int index)? editStudent,
    required TResult orElse(),
  }) {
    if (editStudent != null) {
      return editStudent(modle, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ClearAllStudents value) clearAllStudents,
    required TResult Function(RemoveStudent value) removeStudent,
    required TResult Function(GetAllStudents value) getAllStudents,
    required TResult Function(EditStudent value) editStudent,
  }) {
    return editStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
  }) {
    return editStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ClearAllStudents value)? clearAllStudents,
    TResult Function(RemoveStudent value)? removeStudent,
    TResult Function(GetAllStudents value)? getAllStudents,
    TResult Function(EditStudent value)? editStudent,
    required TResult orElse(),
  }) {
    if (editStudent != null) {
      return editStudent(this);
    }
    return orElse();
  }
}

abstract class EditStudent implements StudentEvent {
  const factory EditStudent(
      {required final StudentModel modle,
      required final int index}) = _$EditStudent;

  StudentModel get modle => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EditStudentCopyWith<_$EditStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  List<StudentModel> get allStudents => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res>;
  $Res call({List<StudentModel> allStudents, bool isLoading});
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res> implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  final StudentState _value;
  // ignore: unused_field
  final $Res Function(StudentState) _then;

  @override
  $Res call({
    Object? allStudents = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      allStudents: allStudents == freezed
          ? _value.allStudents
          : allStudents // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_StudentStateCopyWith<$Res>
    implements $StudentStateCopyWith<$Res> {
  factory _$$_StudentStateCopyWith(
          _$_StudentState value, $Res Function(_$_StudentState) then) =
      __$$_StudentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StudentModel> allStudents, bool isLoading});
}

/// @nodoc
class __$$_StudentStateCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res>
    implements _$$_StudentStateCopyWith<$Res> {
  __$$_StudentStateCopyWithImpl(
      _$_StudentState _value, $Res Function(_$_StudentState) _then)
      : super(_value, (v) => _then(v as _$_StudentState));

  @override
  _$_StudentState get _value => super._value as _$_StudentState;

  @override
  $Res call({
    Object? allStudents = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_StudentState(
      allStudents: allStudents == freezed
          ? _value._allStudents
          : allStudents // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StudentState implements _StudentState {
  const _$_StudentState(
      {required final List<StudentModel> allStudents, required this.isLoading})
      : _allStudents = allStudents;

  final List<StudentModel> _allStudents;
  @override
  List<StudentModel> get allStudents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allStudents);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StudentState(allStudents: $allStudents, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentState &&
            const DeepCollectionEquality()
                .equals(other._allStudents, _allStudents) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allStudents),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_StudentStateCopyWith<_$_StudentState> get copyWith =>
      __$$_StudentStateCopyWithImpl<_$_StudentState>(this, _$identity);
}

abstract class _StudentState implements StudentState {
  const factory _StudentState(
      {required final List<StudentModel> allStudents,
      required final bool isLoading}) = _$_StudentState;

  @override
  List<StudentModel> get allStudents => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StudentStateCopyWith<_$_StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
