#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


module Hadoop
  module API
        module DatanodeReportType
          ALL_DATANODES = 1
          LIVE_DATANODES = 2
          DEAD_DATANODES = 3
          VALID_VALUES = Set.new([ALL_DATANODES, LIVE_DATANODES, DEAD_DATANODES]).freeze
        end

        module DatanodeState
          NORMAL_STATE = 1
          DECOMMISSION_INPROGRESS = 2
          DECOMMISSIONED = 3
          VALID_VALUES = Set.new([NORMAL_STATE, DECOMMISSION_INPROGRESS, DECOMMISSIONED]).freeze
        end

        # Context options for every request.
        class RequestContext
          include ::Thrift::Struct
          CONFOPTIONS = 1

          ::Thrift::Struct.field_accessor self, :confOptions
          FIELDS = {
            # This map turns into a Configuration object in the server and
            # is currently used to construct a UserGroupInformation to
            # authenticate this request.
            CONFOPTIONS => {:type => ::Thrift::Types::MAP, :name => 'confOptions', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Information and state of a data node.
        # 
        # Modelled after org.apache.hadoop.hdfs.protocol.DatanodeInfo
        class DatanodeInfo
          include ::Thrift::Struct
          NAME = 1
          STORAGEID = 2
          HOST = 3
          THRIFTPORT = 4
          CAPACITY = 5
          DFSUSED = 6
          REMAINING = 7
          XCEIVERCOUNT = 8
          STATE = 9

          ::Thrift::Struct.field_accessor self, :name, :storageID, :host, :thriftPort, :capacity, :dfsUsed, :remaining, :xceiverCount, :state
          FIELDS = {
            # HDFS name of the datanode (equals to <host>:<datanode port>)
            NAME => {:type => ::Thrift::Types::STRING, :name => 'name'},
            # Unique ID within a HDFS cluster
            STORAGEID => {:type => ::Thrift::Types::STRING, :name => 'storageID'},
            # Host name of the Thrift server socket.
            HOST => {:type => ::Thrift::Types::STRING, :name => 'host'},
            # Port number of the Thrift server socket, or UNKNOWN_THRIFT_PORT
            # if the Thrift port for this datanode is not known.
            THRIFTPORT => {:type => ::Thrift::Types::I32, :name => 'thriftPort'},
            # Raw capacity of the data node (in bytes).
            CAPACITY => {:type => ::Thrift::Types::I64, :name => 'capacity'},
            # Space used by the data node (in bytes).
            DFSUSED => {:type => ::Thrift::Types::I64, :name => 'dfsUsed'},
            # Raw free space in the data node (in bytes).
            REMAINING => {:type => ::Thrift::Types::I64, :name => 'remaining'},
            # Number of active connections to the data node.
            XCEIVERCOUNT => {:type => ::Thrift::Types::I32, :name => 'xceiverCount'},
            # State of this data node.
            STATE => {:type => ::Thrift::Types::I32, :name => 'state', :enum_class => Hadoop::API::DatanodeState}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @state.nil? || DatanodeState::VALID_VALUES.include?(@state)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field state!')
            end
          end

        end

        # Representation of a file block in HDFS
        # 
        # Modelled after org.apache.hadoop.hdfs.protocol.LocatedBlock
        class Block
          include ::Thrift::Struct
          BLOCKID = 1
          PATH = 2
          NUMBYTES = 3
          GENSTAMP = 4
          STARTOFFSET = 6
          NODES = 5

          ::Thrift::Struct.field_accessor self, :blockId, :path, :numBytes, :genStamp, :startOffset, :nodes
          FIELDS = {
            # Block ID (unique among all blocks in a filesystem).
            BLOCKID => {:type => ::Thrift::Types::I64, :name => 'blockId'},
            # Path of the file which this block belongs to.
            PATH => {:type => ::Thrift::Types::STRING, :name => 'path'},
            # Length of this block.
            NUMBYTES => {:type => ::Thrift::Types::I64, :name => 'numBytes'},
            # Generational stamp of this block.
            GENSTAMP => {:type => ::Thrift::Types::I64, :name => 'genStamp'},
            # Offset of the first byte of the block relative to the start of the file
            STARTOFFSET => {:type => ::Thrift::Types::I64, :name => 'startOffset'},
            # List of data nodes with copies  of this block.
            NODES => {:type => ::Thrift::Types::LIST, :name => 'nodes', :element => {:type => ::Thrift::Types::STRUCT, :class => Hadoop::API::DatanodeInfo}}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Information about a path in HDFS.
        # 
        # Modelled after org.apache.hadoop.fs.ContentSummary and
        #                org.apache.hadoop.fs.FileStatus
        class Stat
          include ::Thrift::Struct
          PATH = 1
          ISDIR = 2
          ATIME = 3
          MTIME = 4
          PERMS = 5
          OWNER = 6
          GROUP = 7
          FILECOUNT = 8
          DIRECTORYCOUNT = 9
          QUOTA = 10
          SPACECONSUMED = 11
          SPACEQUOTA = 12
          LENGTH = 13
          BLOCKSIZE = 14
          REPLICATION = 15

          ::Thrift::Struct.field_accessor self, :path, :isDir, :atime, :mtime, :perms, :owner, :group, :fileCount, :directoryCount, :quota, :spaceConsumed, :spaceQuota, :length, :blockSize, :replication
          FIELDS = {
            # The path.
            PATH => {:type => ::Thrift::Types::STRING, :name => 'path'},
            # True:  The path represents a file.
            # False: The path represents a directory.
            ISDIR => {:type => ::Thrift::Types::BOOL, :name => 'isDir'},
            # Access time (milliseconds since 1970-01-01 00:00 UTC).
            ATIME => {:type => ::Thrift::Types::I64, :name => 'atime'},
            # Modification time (milliseconds since 1970-01-01 00:00 UTC).
            MTIME => {:type => ::Thrift::Types::I64, :name => 'mtime'},
            # Access permissions
            PERMS => {:type => ::Thrift::Types::I16, :name => 'perms'},
            # Owner
            OWNER => {:type => ::Thrift::Types::STRING, :name => 'owner'},
            # Group
            GROUP => {:type => ::Thrift::Types::STRING, :name => 'group'},
            # Number of files in this directory
            FILECOUNT => {:type => ::Thrift::Types::I64, :name => 'fileCount'},
            # Number of directories in this directory
            DIRECTORYCOUNT => {:type => ::Thrift::Types::I64, :name => 'directoryCount'},
            # Quota for this directory (in bytes).
            QUOTA => {:type => ::Thrift::Types::I64, :name => 'quota'},
            # Space consumed in disk (in bytes).
            SPACECONSUMED => {:type => ::Thrift::Types::I64, :name => 'spaceConsumed'},
            # Quota consumed in disk (in bytes).
            SPACEQUOTA => {:type => ::Thrift::Types::I64, :name => 'spaceQuota'},
            # Length (in bytes).
            LENGTH => {:type => ::Thrift::Types::I64, :name => 'length'},
            # Block size (in bytes).
            BLOCKSIZE => {:type => ::Thrift::Types::I64, :name => 'blockSize'},
            # Replication factor.
            REPLICATION => {:type => ::Thrift::Types::I16, :name => 'replication'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class UpgradeStatusReport
          include ::Thrift::Struct
          VERSION = 1
          PERCENTCOMPLETE = 2
          FINALIZED = 3
          STATUSTEXT = 4

          ::Thrift::Struct.field_accessor self, :version, :percentComplete, :finalized, :statusText
          FIELDS = {
            VERSION => {:type => ::Thrift::Types::I32, :name => 'version'},
            PERCENTCOMPLETE => {:type => ::Thrift::Types::I16, :name => 'percentComplete'},
            FINALIZED => {:type => ::Thrift::Types::BOOL, :name => 'finalized'},
            # The informative text that is the same as is shown on the NN web UI
            STATUSTEXT => {:type => ::Thrift::Types::STRING, :name => 'statusText'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Information that mirrors the "health report" information available on the
        # NameNode web UI
        class DFSHealthReport
          include ::Thrift::Struct
          BYTESTOTAL = 1
          BYTESUSED = 2
          BYTESREMAINING = 3
          BYTESNONDFS = 4
          NUMLIVEDATANODES = 5
          NUMDEADDATANODES = 6
          UPGRADESTATUS = 7

          ::Thrift::Struct.field_accessor self, :bytesTotal, :bytesUsed, :bytesRemaining, :bytesNonDfs, :numLiveDataNodes, :numDeadDataNodes, :upgradeStatus
          FIELDS = {
            BYTESTOTAL => {:type => ::Thrift::Types::I64, :name => 'bytesTotal'},
            BYTESUSED => {:type => ::Thrift::Types::I64, :name => 'bytesUsed'},
            BYTESREMAINING => {:type => ::Thrift::Types::I64, :name => 'bytesRemaining'},
            BYTESNONDFS => {:type => ::Thrift::Types::I64, :name => 'bytesNonDfs'},
            # How many datanodes are considered live
            NUMLIVEDATANODES => {:type => ::Thrift::Types::I32, :name => 'numLiveDataNodes'},
            # How many datanodes are considered dead
            NUMDEADDATANODES => {:type => ::Thrift::Types::I32, :name => 'numDeadDataNodes'},
            # Status of the current running upgrade. If no upgrade
            # is running, this will be null.
            UPGRADESTATUS => {:type => ::Thrift::Types::STRUCT, :name => 'upgradeStatus', :class => Hadoop::API::UpgradeStatusReport}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Information about the compilation version of this server
        class VersionInfo
          include ::Thrift::Struct
          VERSION = 1
          REVISION = 2
          BRANCH = 3
          COMPILEDATE = 4
          COMPILINGUSER = 5
          URL = 6
          BUILDVERSION = 7

          ::Thrift::Struct.field_accessor self, :version, :revision, :branch, :compileDate, :compilingUser, :url, :buildVersion
          FIELDS = {
            VERSION => {:type => ::Thrift::Types::STRING, :name => 'version'},
            REVISION => {:type => ::Thrift::Types::STRING, :name => 'revision'},
            BRANCH => {:type => ::Thrift::Types::STRING, :name => 'branch'},
            COMPILEDATE => {:type => ::Thrift::Types::STRING, :name => 'compileDate'},
            COMPILINGUSER => {:type => ::Thrift::Types::STRING, :name => 'compilingUser'},
            URL => {:type => ::Thrift::Types::STRING, :name => 'url'},
            BUILDVERSION => {:type => ::Thrift::Types::STRING, :name => 'buildVersion'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # A single stack frame in a stack dump
        class StackTraceElement
          include ::Thrift::Struct
          CLASSNAME = 1
          FILENAME = 2
          LINENUMBER = 3
          METHODNAME = 4
          ISNATIVEMETHOD = 5
          STRINGREPRESENTATION = 6

          ::Thrift::Struct.field_accessor self, :className, :fileName, :lineNumber, :methodName, :isNativeMethod, :stringRepresentation
          FIELDS = {
            CLASSNAME => {:type => ::Thrift::Types::STRING, :name => 'className'},
            FILENAME => {:type => ::Thrift::Types::STRING, :name => 'fileName'},
            LINENUMBER => {:type => ::Thrift::Types::I32, :name => 'lineNumber'},
            METHODNAME => {:type => ::Thrift::Types::STRING, :name => 'methodName'},
            ISNATIVEMETHOD => {:type => ::Thrift::Types::BOOL, :name => 'isNativeMethod'},
            STRINGREPRESENTATION => {:type => ::Thrift::Types::STRING, :name => 'stringRepresentation'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Info about a thread with its corresponding stack trace
        class ThreadStackTrace
          include ::Thrift::Struct
          THREADNAME = 1
          THREADSTRINGREPRESENTATION = 2
          ISDAEMON = 3
          STACKTRACE = 4

          ::Thrift::Struct.field_accessor self, :threadName, :threadStringRepresentation, :isDaemon, :stackTrace
          FIELDS = {
            THREADNAME => {:type => ::Thrift::Types::STRING, :name => 'threadName'},
            THREADSTRINGREPRESENTATION => {:type => ::Thrift::Types::STRING, :name => 'threadStringRepresentation'},
            ISDAEMON => {:type => ::Thrift::Types::BOOL, :name => 'isDaemon'},
            STACKTRACE => {:type => ::Thrift::Types::LIST, :name => 'stackTrace', :element => {:type => ::Thrift::Types::STRUCT, :class => Hadoop::API::StackTraceElement}}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Memory available via java.lang.Runtime
        class RuntimeInfo
          include ::Thrift::Struct
          TOTALMEMORY = 1
          FREEMEMORY = 2
          MAXMEMORY = 3

          ::Thrift::Struct.field_accessor self, :totalMemory, :freeMemory, :maxMemory
          FIELDS = {
            TOTALMEMORY => {:type => ::Thrift::Types::I64, :name => 'totalMemory'},
            FREEMEMORY => {:type => ::Thrift::Types::I64, :name => 'freeMemory'},
            MAXMEMORY => {:type => ::Thrift::Types::I64, :name => 'maxMemory'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Generic I/O error
        class IOException < ::Thrift::Exception
          include ::Thrift::Struct
          MSG = 1
          STACK = 2
          CLAZZ = 3

          ::Thrift::Struct.field_accessor self, :msg, :stack, :clazz
          FIELDS = {
            # Error message.
            MSG => {:type => ::Thrift::Types::STRING, :name => 'msg'},
            # Textual representation of the call stack.
            STACK => {:type => ::Thrift::Types::STRING, :name => 'stack'},
            # The Java class of the Exception (may be a subclass)
            CLAZZ => {:type => ::Thrift::Types::STRING, :name => 'clazz'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Quota-related error
        class QuotaException < ::Thrift::Exception
          include ::Thrift::Struct
          MSG = 1
          STACK = 2

          ::Thrift::Struct.field_accessor self, :msg, :stack
          FIELDS = {
            # Error message.
            MSG => {:type => ::Thrift::Types::STRING, :name => 'msg'},
            # Textual representation of the call stack.
            STACK => {:type => ::Thrift::Types::STRING, :name => 'stack'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        # Encapsulates a block data transfer with its CRC
        class BlockData
          include ::Thrift::Struct
          CRC = 1
          LENGTH = 2
          DATA = 3

          ::Thrift::Struct.field_accessor self, :crc, :length, :data
          FIELDS = {
            # CRC32 of the data being transfered
            CRC => {:type => ::Thrift::Types::I32, :name => 'crc'},
            # Length of the data being transfered
            LENGTH => {:type => ::Thrift::Types::I32, :name => 'length'},
            # The data itsef
            DATA => {:type => ::Thrift::Types::STRING, :name => 'data'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

      end
    end
