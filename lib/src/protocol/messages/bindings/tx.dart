// The file contains all method messages for AMQP class Tx (id: 90)
//
// File was auto-generated by generate_bindings.dart at 2019-03-21 11:46:08.142771
//
// Do not modify

// ignore_for_file: empty_constructor_bodies

part of dart_amqp.protocol;

class TxSelect implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 10;

  // Message arguments

  TxSelect();

  @override
  void serialize(TypeEncoder encoder) {
    encoder..writeUInt16(msgClassId)..writeUInt16(msgMethodId);
  }
}

class TxSelectOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 11;

  // Message arguments

  TxSelectOk.fromStream(TypeDecoder decoder) {}

  @override
  void serialize(TypeEncoder encoder) {}
}

class TxCommit implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 20;

  // Message arguments

  TxCommit();

  @override
  void serialize(TypeEncoder encoder) {
    encoder..writeUInt16(msgClassId)..writeUInt16(msgMethodId);
  }
}

class TxCommitOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 21;

  // Message arguments

  TxCommitOk.fromStream(TypeDecoder decoder) {}

  @override
  void serialize(TypeEncoder encoder) {}
}

class TxRollback implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 30;

  // Message arguments

  TxRollback();

  @override
  void serialize(TypeEncoder encoder) {
    encoder..writeUInt16(msgClassId)..writeUInt16(msgMethodId);
  }
}

class TxRollbackOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 90;
  @override
  final int msgMethodId = 31;

  // Message arguments

  TxRollbackOk.fromStream(TypeDecoder decoder) {}

  @override
  void serialize(TypeEncoder encoder) {}
}
