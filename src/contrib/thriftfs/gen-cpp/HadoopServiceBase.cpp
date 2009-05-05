/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
#include "HadoopServiceBase.h"

namespace hadoop { namespace api {

uint32_t HadoopServiceBase_getVersionInfo_args::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 10:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += this->ctx.read(iprot);
          this->__isset.ctx = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getVersionInfo_args::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getVersionInfo_args");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += this->ctx.write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getVersionInfo_pargs::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getVersionInfo_pargs");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += (*(this->ctx)).write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getVersionInfo_result::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += this->success.read(iprot);
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getVersionInfo_result::write(apache::thrift::protocol::TProtocol* oprot) const {

  uint32_t xfer = 0;

  xfer += oprot->writeStructBegin("HadoopServiceBase_getVersionInfo_result");

  if (this->__isset.success) {
    xfer += oprot->writeFieldBegin("success", apache::thrift::protocol::T_STRUCT, 0);
    xfer += this->success.write(oprot);
    xfer += oprot->writeFieldEnd();
  }
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getVersionInfo_presult::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += (*(this->success)).read(iprot);
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_args::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 10:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += this->ctx.read(iprot);
          this->__isset.ctx = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_args::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getRuntimeInfo_args");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += this->ctx.write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_pargs::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getRuntimeInfo_pargs");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += (*(this->ctx)).write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_result::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += this->success.read(iprot);
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_result::write(apache::thrift::protocol::TProtocol* oprot) const {

  uint32_t xfer = 0;

  xfer += oprot->writeStructBegin("HadoopServiceBase_getRuntimeInfo_result");

  if (this->__isset.success) {
    xfer += oprot->writeFieldBegin("success", apache::thrift::protocol::T_STRUCT, 0);
    xfer += this->success.write(oprot);
    xfer += oprot->writeFieldEnd();
  }
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getRuntimeInfo_presult::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += (*(this->success)).read(iprot);
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_args::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 10:
        if (ftype == apache::thrift::protocol::T_STRUCT) {
          xfer += this->ctx.read(iprot);
          this->__isset.ctx = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_args::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getThreadDump_args");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += this->ctx.write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_pargs::write(apache::thrift::protocol::TProtocol* oprot) const {
  uint32_t xfer = 0;
  xfer += oprot->writeStructBegin("HadoopServiceBase_getThreadDump_pargs");
  xfer += oprot->writeFieldBegin("ctx", apache::thrift::protocol::T_STRUCT, 10);
  xfer += (*(this->ctx)).write(oprot);
  xfer += oprot->writeFieldEnd();
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_result::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_LIST) {
          {
            this->success.clear();
            uint32_t _size21;
            apache::thrift::protocol::TType _etype24;
            iprot->readListBegin(_etype24, _size21);
            this->success.resize(_size21);
            uint32_t _i25;
            for (_i25 = 0; _i25 < _size21; ++_i25)
            {
              xfer += this->success[_i25].read(iprot);
            }
            iprot->readListEnd();
          }
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_result::write(apache::thrift::protocol::TProtocol* oprot) const {

  uint32_t xfer = 0;

  xfer += oprot->writeStructBegin("HadoopServiceBase_getThreadDump_result");

  if (this->__isset.success) {
    xfer += oprot->writeFieldBegin("success", apache::thrift::protocol::T_LIST, 0);
    {
      xfer += oprot->writeListBegin(apache::thrift::protocol::T_STRUCT, this->success.size());
      std::vector<ThreadStackTrace> ::const_iterator _iter26;
      for (_iter26 = this->success.begin(); _iter26 != this->success.end(); ++_iter26)
      {
        xfer += (*_iter26).write(oprot);
      }
      xfer += oprot->writeListEnd();
    }
    xfer += oprot->writeFieldEnd();
  }
  xfer += oprot->writeFieldStop();
  xfer += oprot->writeStructEnd();
  return xfer;
}

uint32_t HadoopServiceBase_getThreadDump_presult::read(apache::thrift::protocol::TProtocol* iprot) {

  uint32_t xfer = 0;
  std::string fname;
  apache::thrift::protocol::TType ftype;
  int16_t fid;

  xfer += iprot->readStructBegin(fname);

  using apache::thrift::protocol::TProtocolException;


  while (true)
  {
    xfer += iprot->readFieldBegin(fname, ftype, fid);
    if (ftype == apache::thrift::protocol::T_STOP) {
      break;
    }
    switch (fid)
    {
      case 0:
        if (ftype == apache::thrift::protocol::T_LIST) {
          {
            (*(this->success)).clear();
            uint32_t _size27;
            apache::thrift::protocol::TType _etype30;
            iprot->readListBegin(_etype30, _size27);
            (*(this->success)).resize(_size27);
            uint32_t _i31;
            for (_i31 = 0; _i31 < _size27; ++_i31)
            {
              xfer += (*(this->success))[_i31].read(iprot);
            }
            iprot->readListEnd();
          }
          this->__isset.success = true;
        } else {
          xfer += iprot->skip(ftype);
        }
        break;
      default:
        xfer += iprot->skip(ftype);
        break;
    }
    xfer += iprot->readFieldEnd();
  }

  xfer += iprot->readStructEnd();

  return xfer;
}

void HadoopServiceBaseClient::getVersionInfo(VersionInfo& _return, const RequestContext& ctx)
{
  send_getVersionInfo(ctx);
  recv_getVersionInfo(_return);
}

void HadoopServiceBaseClient::send_getVersionInfo(const RequestContext& ctx)
{
  int32_t cseqid = 0;
  oprot_->writeMessageBegin("getVersionInfo", apache::thrift::protocol::T_CALL, cseqid);

  HadoopServiceBase_getVersionInfo_pargs args;
  args.ctx = &ctx;
  args.write(oprot_);

  oprot_->writeMessageEnd();
  oprot_->getTransport()->flush();
  oprot_->getTransport()->writeEnd();
}

void HadoopServiceBaseClient::recv_getVersionInfo(VersionInfo& _return)
{

  int32_t rseqid = 0;
  std::string fname;
  apache::thrift::protocol::TMessageType mtype;

  iprot_->readMessageBegin(fname, mtype, rseqid);
  if (mtype == apache::thrift::protocol::T_EXCEPTION) {
    apache::thrift::TApplicationException x;
    x.read(iprot_);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw x;
  }
  if (mtype != apache::thrift::protocol::T_REPLY) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::INVALID_MESSAGE_TYPE);
  }
  if (fname.compare("getVersionInfo") != 0) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::WRONG_METHOD_NAME);
  }
  HadoopServiceBase_getVersionInfo_presult result;
  result.success = &_return;
  result.read(iprot_);
  iprot_->readMessageEnd();
  iprot_->getTransport()->readEnd();

  if (result.__isset.success) {
    // _return pointer has now been filled
    return;
  }
  throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::MISSING_RESULT, "getVersionInfo failed: unknown result");
}

void HadoopServiceBaseClient::getRuntimeInfo(RuntimeInfo& _return, const RequestContext& ctx)
{
  send_getRuntimeInfo(ctx);
  recv_getRuntimeInfo(_return);
}

void HadoopServiceBaseClient::send_getRuntimeInfo(const RequestContext& ctx)
{
  int32_t cseqid = 0;
  oprot_->writeMessageBegin("getRuntimeInfo", apache::thrift::protocol::T_CALL, cseqid);

  HadoopServiceBase_getRuntimeInfo_pargs args;
  args.ctx = &ctx;
  args.write(oprot_);

  oprot_->writeMessageEnd();
  oprot_->getTransport()->flush();
  oprot_->getTransport()->writeEnd();
}

void HadoopServiceBaseClient::recv_getRuntimeInfo(RuntimeInfo& _return)
{

  int32_t rseqid = 0;
  std::string fname;
  apache::thrift::protocol::TMessageType mtype;

  iprot_->readMessageBegin(fname, mtype, rseqid);
  if (mtype == apache::thrift::protocol::T_EXCEPTION) {
    apache::thrift::TApplicationException x;
    x.read(iprot_);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw x;
  }
  if (mtype != apache::thrift::protocol::T_REPLY) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::INVALID_MESSAGE_TYPE);
  }
  if (fname.compare("getRuntimeInfo") != 0) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::WRONG_METHOD_NAME);
  }
  HadoopServiceBase_getRuntimeInfo_presult result;
  result.success = &_return;
  result.read(iprot_);
  iprot_->readMessageEnd();
  iprot_->getTransport()->readEnd();

  if (result.__isset.success) {
    // _return pointer has now been filled
    return;
  }
  throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::MISSING_RESULT, "getRuntimeInfo failed: unknown result");
}

void HadoopServiceBaseClient::getThreadDump(std::vector<ThreadStackTrace> & _return, const RequestContext& ctx)
{
  send_getThreadDump(ctx);
  recv_getThreadDump(_return);
}

void HadoopServiceBaseClient::send_getThreadDump(const RequestContext& ctx)
{
  int32_t cseqid = 0;
  oprot_->writeMessageBegin("getThreadDump", apache::thrift::protocol::T_CALL, cseqid);

  HadoopServiceBase_getThreadDump_pargs args;
  args.ctx = &ctx;
  args.write(oprot_);

  oprot_->writeMessageEnd();
  oprot_->getTransport()->flush();
  oprot_->getTransport()->writeEnd();
}

void HadoopServiceBaseClient::recv_getThreadDump(std::vector<ThreadStackTrace> & _return)
{

  int32_t rseqid = 0;
  std::string fname;
  apache::thrift::protocol::TMessageType mtype;

  iprot_->readMessageBegin(fname, mtype, rseqid);
  if (mtype == apache::thrift::protocol::T_EXCEPTION) {
    apache::thrift::TApplicationException x;
    x.read(iprot_);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw x;
  }
  if (mtype != apache::thrift::protocol::T_REPLY) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::INVALID_MESSAGE_TYPE);
  }
  if (fname.compare("getThreadDump") != 0) {
    iprot_->skip(apache::thrift::protocol::T_STRUCT);
    iprot_->readMessageEnd();
    iprot_->getTransport()->readEnd();
    throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::WRONG_METHOD_NAME);
  }
  HadoopServiceBase_getThreadDump_presult result;
  result.success = &_return;
  result.read(iprot_);
  iprot_->readMessageEnd();
  iprot_->getTransport()->readEnd();

  if (result.__isset.success) {
    // _return pointer has now been filled
    return;
  }
  throw apache::thrift::TApplicationException(apache::thrift::TApplicationException::MISSING_RESULT, "getThreadDump failed: unknown result");
}

bool HadoopServiceBaseProcessor::process(boost::shared_ptr<apache::thrift::protocol::TProtocol> piprot, boost::shared_ptr<apache::thrift::protocol::TProtocol> poprot) {

  apache::thrift::protocol::TProtocol* iprot = piprot.get();
  apache::thrift::protocol::TProtocol* oprot = poprot.get();
  std::string fname;
  apache::thrift::protocol::TMessageType mtype;
  int32_t seqid;

  iprot->readMessageBegin(fname, mtype, seqid);

  if (mtype != apache::thrift::protocol::T_CALL && mtype != apache::thrift::protocol::T_ONEWAY) {
    iprot->skip(apache::thrift::protocol::T_STRUCT);
    iprot->readMessageEnd();
    iprot->getTransport()->readEnd();
    apache::thrift::TApplicationException x(apache::thrift::TApplicationException::INVALID_MESSAGE_TYPE);
    oprot->writeMessageBegin(fname, apache::thrift::protocol::T_EXCEPTION, seqid);
    x.write(oprot);
    oprot->writeMessageEnd();
    oprot->getTransport()->flush();
    oprot->getTransport()->writeEnd();
    return true;
  }

  return process_fn(iprot, oprot, fname, seqid);
}

bool HadoopServiceBaseProcessor::process_fn(apache::thrift::protocol::TProtocol* iprot, apache::thrift::protocol::TProtocol* oprot, std::string& fname, int32_t seqid) {
  std::map<std::string, void (HadoopServiceBaseProcessor::*)(int32_t, apache::thrift::protocol::TProtocol*, apache::thrift::protocol::TProtocol*)>::iterator pfn;
  pfn = processMap_.find(fname);
  if (pfn == processMap_.end()) {
    iprot->skip(apache::thrift::protocol::T_STRUCT);
    iprot->readMessageEnd();
    iprot->getTransport()->readEnd();
    apache::thrift::TApplicationException x(apache::thrift::TApplicationException::UNKNOWN_METHOD, "Invalid method name: '"+fname+"'");
    oprot->writeMessageBegin(fname, apache::thrift::protocol::T_EXCEPTION, seqid);
    x.write(oprot);
    oprot->writeMessageEnd();
    oprot->getTransport()->flush();
    oprot->getTransport()->writeEnd();
    return true;
  }
  (this->*(pfn->second))(seqid, iprot, oprot);
  return true;
}

void HadoopServiceBaseProcessor::process_getVersionInfo(int32_t seqid, apache::thrift::protocol::TProtocol* iprot, apache::thrift::protocol::TProtocol* oprot)
{
  HadoopServiceBase_getVersionInfo_args args;
  args.read(iprot);
  iprot->readMessageEnd();
  iprot->getTransport()->readEnd();

  HadoopServiceBase_getVersionInfo_result result;
  try {
    iface_->getVersionInfo(result.success, args.ctx);
    result.__isset.success = true;
  } catch (const std::exception& e) {
    apache::thrift::TApplicationException x(e.what());
    oprot->writeMessageBegin("getVersionInfo", apache::thrift::protocol::T_EXCEPTION, seqid);
    x.write(oprot);
    oprot->writeMessageEnd();
    oprot->getTransport()->flush();
    oprot->getTransport()->writeEnd();
    return;
  }

  oprot->writeMessageBegin("getVersionInfo", apache::thrift::protocol::T_REPLY, seqid);
  result.write(oprot);
  oprot->writeMessageEnd();
  oprot->getTransport()->flush();
  oprot->getTransport()->writeEnd();
}

void HadoopServiceBaseProcessor::process_getRuntimeInfo(int32_t seqid, apache::thrift::protocol::TProtocol* iprot, apache::thrift::protocol::TProtocol* oprot)
{
  HadoopServiceBase_getRuntimeInfo_args args;
  args.read(iprot);
  iprot->readMessageEnd();
  iprot->getTransport()->readEnd();

  HadoopServiceBase_getRuntimeInfo_result result;
  try {
    iface_->getRuntimeInfo(result.success, args.ctx);
    result.__isset.success = true;
  } catch (const std::exception& e) {
    apache::thrift::TApplicationException x(e.what());
    oprot->writeMessageBegin("getRuntimeInfo", apache::thrift::protocol::T_EXCEPTION, seqid);
    x.write(oprot);
    oprot->writeMessageEnd();
    oprot->getTransport()->flush();
    oprot->getTransport()->writeEnd();
    return;
  }

  oprot->writeMessageBegin("getRuntimeInfo", apache::thrift::protocol::T_REPLY, seqid);
  result.write(oprot);
  oprot->writeMessageEnd();
  oprot->getTransport()->flush();
  oprot->getTransport()->writeEnd();
}

void HadoopServiceBaseProcessor::process_getThreadDump(int32_t seqid, apache::thrift::protocol::TProtocol* iprot, apache::thrift::protocol::TProtocol* oprot)
{
  HadoopServiceBase_getThreadDump_args args;
  args.read(iprot);
  iprot->readMessageEnd();
  iprot->getTransport()->readEnd();

  HadoopServiceBase_getThreadDump_result result;
  try {
    iface_->getThreadDump(result.success, args.ctx);
    result.__isset.success = true;
  } catch (const std::exception& e) {
    apache::thrift::TApplicationException x(e.what());
    oprot->writeMessageBegin("getThreadDump", apache::thrift::protocol::T_EXCEPTION, seqid);
    x.write(oprot);
    oprot->writeMessageEnd();
    oprot->getTransport()->flush();
    oprot->getTransport()->writeEnd();
    return;
  }

  oprot->writeMessageBegin("getThreadDump", apache::thrift::protocol::T_REPLY, seqid);
  result.write(oprot);
  oprot->writeMessageEnd();
  oprot->getTransport()->flush();
  oprot->getTransport()->writeEnd();
}

}} // namespace

