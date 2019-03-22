// The file contains the base class for AMQP method messages
// and a factory constructor for unserializing AMQP messages
// from incoming frames
//
// File was auto-generated by generate_bindings.dart at 2015-09-24 14:33:26.633
//
// Do not modify

part of dart_amqp.protocol;

abstract class Message {
  int get msgClassId;

  int get msgMethodId;

  bool get msgHasContent;

  void serialize(TypeEncoder encoder);

  factory Message.fromStream(TypeDecoder decoder) {
    int msgClassId = decoder.readUInt16();
    int msgMethodId = decoder.readUInt16();

    switch (msgClassId) {
      case 10: // Class: Connection
        switch (msgMethodId) {
          case 10:
            return ConnectionStart.fromStream(decoder);
          case 20:
            return ConnectionSecure.fromStream(decoder);
          case 30:
            return ConnectionTune.fromStream(decoder);
          case 41:
            return ConnectionOpenOk.fromStream(decoder);
          case 50:
            return ConnectionClose.fromStream(decoder);
          case 51:
            return ConnectionCloseOk.fromStream(decoder);
        }
        break;
      case 20: // Class: Channel
        switch (msgMethodId) {
          case 11:
            return ChannelOpenOk.fromStream(decoder);
          case 20:
            return ChannelFlow.fromStream(decoder);
          case 21:
            return ChannelFlowOk.fromStream(decoder);
          case 40:
            return ChannelClose.fromStream(decoder);
          case 41:
            return ChannelCloseOk.fromStream(decoder);
        }
        break;
      case 40: // Class: Exchange
        switch (msgMethodId) {
          case 11:
            return ExchangeDeclareOk.fromStream(decoder);
          case 21:
            return ExchangeDeleteOk.fromStream(decoder);
        }
        break;
      case 50: // Class: Queue
        switch (msgMethodId) {
          case 11:
            return QueueDeclareOk.fromStream(decoder);
          case 21:
            return QueueBindOk.fromStream(decoder);
          case 51:
            return QueueUnbindOk.fromStream(decoder);
          case 31:
            return QueuePurgeOk.fromStream(decoder);
          case 41:
            return QueueDeleteOk.fromStream(decoder);
        }
        break;
      case 60: // Class: Basic
        switch (msgMethodId) {
          case 11:
            return BasicQosOk.fromStream(decoder);
          case 21:
            return BasicConsumeOk.fromStream(decoder);
          case 31:
            return BasicCancelOk.fromStream(decoder);
          case 50:
            return BasicReturn.fromStream(decoder);
          case 60:
            return BasicDeliver.fromStream(decoder);
          case 111:
            return BasicRecoverOk.fromStream(decoder);
        }
        break;
      case 90: // Class: Tx
        switch (msgMethodId) {
          case 11:
            return TxSelectOk.fromStream(decoder);
          case 21:
            return TxCommitOk.fromStream(decoder);
          case 31:
            return TxRollbackOk.fromStream(decoder);
        }
        break;
    }

    // Message decoding failed; unknown message
    throw ArgumentError(
        "Unknown message type (class: ${msgClassId}, method: ${msgMethodId})");
  }
}
