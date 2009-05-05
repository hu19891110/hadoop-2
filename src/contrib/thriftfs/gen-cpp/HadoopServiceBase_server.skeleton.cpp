// This autogenerated skeleton file illustrates how to build a server.
// You should copy it to another filename to avoid overwriting it.

#include "HadoopServiceBase.h"
#include <protocol/TBinaryProtocol.h>
#include <server/TSimpleServer.h>
#include <transport/TServerSocket.h>
#include <transport/TBufferTransports.h>

using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;
using namespace apache::thrift::server;

using boost::shared_ptr;

using namespace hadoop::api;

class HadoopServiceBaseHandler : virtual public HadoopServiceBaseIf {
 public:
  HadoopServiceBaseHandler() {
    // Your initialization goes here
  }

  void getVersionInfo(VersionInfo& _return, const RequestContext& ctx) {
    // Your implementation goes here
    printf("getVersionInfo\n");
  }

  void getRuntimeInfo(RuntimeInfo& _return, const RequestContext& ctx) {
    // Your implementation goes here
    printf("getRuntimeInfo\n");
  }

  void getThreadDump(std::vector<ThreadStackTrace> & _return, const RequestContext& ctx) {
    // Your implementation goes here
    printf("getThreadDump\n");
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  shared_ptr<HadoopServiceBaseHandler> handler(new HadoopServiceBaseHandler());
  shared_ptr<TProcessor> processor(new HadoopServiceBaseProcessor(handler));
  shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}

