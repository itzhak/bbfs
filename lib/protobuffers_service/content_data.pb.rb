### Generated by rprotoc. DO NOT EDIT!
### <proto file: content_data.proto>
# message ContentMessage {
#   optional string checksum = 1;
#   optional  int32 size = 2;
#   optional string first_appearance_time = 3;
# }
# 
# message ContentInstanceMessage {
#   optional string checksum = 1;
#   optional int32 size = 2;
#   optional string server_name = 3;
#   optional string device = 4;
#   optional string full_path = 5;
#   optional string modification_time = 6;
# }
# 
# message ContentDataMessage {
#     message HashEntry {
#         message HashValue {
#             //enum Type {CONTENT = 1; ContentInstance = 2;}
#             //optional Type type = 1;
#             optional ContentMessage content = 2;
#             optional ContentInstanceMessage instance = 3;
#         }
#         optional string key = 1;
#         optional HashValue value = 2;
#     }
#     repeated HashEntry contents = 1;
#     repeated HashEntry instances = 2;
# }

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

class ContentMessage < ::Protobuf::Message
  defined_in __FILE__
  optional :string, :checksum, 1
  optional :int32, :size, 2
  optional :string, :first_appearance_time, 3
end
class ContentInstanceMessage < ::Protobuf::Message
  defined_in __FILE__
  optional :string, :checksum, 1
  optional :int32, :size, 2
  optional :string, :server_name, 3
  optional :string, :device, 4
  optional :string, :full_path, 5
  optional :string, :modification_time, 6
end
class ContentDataMessage < ::Protobuf::Message
  defined_in __FILE__
  class HashEntry < ::Protobuf::Message
    defined_in __FILE__
    class HashValue < ::Protobuf::Message
      defined_in __FILE__
      optional :ContentMessage, :content, 2
      optional :ContentInstanceMessage, :instance, 3
    end
    optional :string, :key, 1
    optional :HashValue, :value, 2
  end
  repeated :HashEntry, :contents, 1
  repeated :HashEntry, :instances, 2
end