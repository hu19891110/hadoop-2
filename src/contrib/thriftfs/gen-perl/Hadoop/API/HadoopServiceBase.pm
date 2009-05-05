#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#
require 5.6.0;
use strict;
use warnings;
use Thrift;

use Hadoop::API::Types;

# HELPER FUNCTIONS AND STRUCTURES

package Hadoop::API::HadoopServiceBase_getVersionInfo_args;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getVersionInfo_args->mk_accessors( qw( ctx ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{ctx} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{ctx}) {
      $self->{ctx} = $vals->{ctx};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getVersionInfo_args';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^10$/ && do{      if ($ftype == TType::STRUCT) {
        $self->{ctx} = new Hadoop::API::RequestContext();
        $xfer += $self->{ctx}->read($input);
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getVersionInfo_args');
  if (defined $self->{ctx}) {
    $xfer += $output->writeFieldBegin('ctx', TType::STRUCT, 10);
    $xfer += $self->{ctx}->write($output);
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBase_getVersionInfo_result;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getVersionInfo_result->mk_accessors( qw( success ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{success} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{success}) {
      $self->{success} = $vals->{success};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getVersionInfo_result';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^0$/ && do{      if ($ftype == TType::STRUCT) {
        $self->{success} = new Hadoop::API::VersionInfo();
        $xfer += $self->{success}->read($input);
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getVersionInfo_result');
  if (defined $self->{success}) {
    $xfer += $output->writeFieldBegin('success', TType::STRUCT, 0);
    $xfer += $self->{success}->write($output);
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBase_getRuntimeInfo_args;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getRuntimeInfo_args->mk_accessors( qw( ctx ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{ctx} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{ctx}) {
      $self->{ctx} = $vals->{ctx};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getRuntimeInfo_args';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^10$/ && do{      if ($ftype == TType::STRUCT) {
        $self->{ctx} = new Hadoop::API::RequestContext();
        $xfer += $self->{ctx}->read($input);
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getRuntimeInfo_args');
  if (defined $self->{ctx}) {
    $xfer += $output->writeFieldBegin('ctx', TType::STRUCT, 10);
    $xfer += $self->{ctx}->write($output);
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBase_getRuntimeInfo_result;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getRuntimeInfo_result->mk_accessors( qw( success ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{success} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{success}) {
      $self->{success} = $vals->{success};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getRuntimeInfo_result';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^0$/ && do{      if ($ftype == TType::STRUCT) {
        $self->{success} = new Hadoop::API::RuntimeInfo();
        $xfer += $self->{success}->read($input);
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getRuntimeInfo_result');
  if (defined $self->{success}) {
    $xfer += $output->writeFieldBegin('success', TType::STRUCT, 0);
    $xfer += $self->{success}->write($output);
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBase_getThreadDump_args;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getThreadDump_args->mk_accessors( qw( ctx ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{ctx} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{ctx}) {
      $self->{ctx} = $vals->{ctx};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getThreadDump_args';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^10$/ && do{      if ($ftype == TType::STRUCT) {
        $self->{ctx} = new Hadoop::API::RequestContext();
        $xfer += $self->{ctx}->read($input);
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getThreadDump_args');
  if (defined $self->{ctx}) {
    $xfer += $output->writeFieldBegin('ctx', TType::STRUCT, 10);
    $xfer += $self->{ctx}->write($output);
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBase_getThreadDump_result;
use Class::Accessor;
use base('Class::Accessor');
Hadoop::API::HadoopServiceBase_getThreadDump_result->mk_accessors( qw( success ) );
sub new {
my $classname = shift;
my $self      = {};
my $vals      = shift || {};
$self->{success} = undef;
  if (UNIVERSAL::isa($vals,'HASH')) {
    if (defined $vals->{success}) {
      $self->{success} = $vals->{success};
    }
  }
return bless($self,$classname);
}

sub getName {
  return 'HadoopServiceBase_getThreadDump_result';
}

sub read {
  my $self  = shift;
  my $input = shift;
  my $xfer  = 0;
  my $fname;
  my $ftype = 0;
  my $fid   = 0;
  $xfer += $input->readStructBegin(\$fname);
  while (1) 
  {
    $xfer += $input->readFieldBegin(\$fname, \$ftype, \$fid);
    if ($ftype == TType::STOP) {
      last;
    }
    SWITCH: for($fid)
    {
      /^0$/ && do{      if ($ftype == TType::LIST) {
        {
          my $_size23 = 0;
          $self->{success} = [];
          my $_etype26 = 0;
          $xfer += $input->readListBegin(\$_etype26, \$_size23);
          for (my $_i27 = 0; $_i27 < $_size23; ++$_i27)
          {
            my $elem28 = undef;
            $elem28 = new Hadoop::API::ThreadStackTrace();
            $xfer += $elem28->read($input);
            push(@{$self->{success}},$elem28);
          }
          $xfer += $input->readListEnd();
        }
      } else {
        $xfer += $input->skip($ftype);
      }
      last; };
        $xfer += $input->skip($ftype);
    }
    $xfer += $input->readFieldEnd();
  }
  $xfer += $input->readStructEnd();
  return $xfer;
}

sub write {
  my $self   = shift;
  my $output = shift;
  my $xfer   = 0;
  $xfer += $output->writeStructBegin('HadoopServiceBase_getThreadDump_result');
  if (defined $self->{success}) {
    $xfer += $output->writeFieldBegin('success', TType::LIST, 0);
    {
      $output->writeListBegin(TType::STRUCT, scalar(@{$self->{success}}));
      {
        foreach my $iter29 (@{$self->{success}}) 
        {
          $xfer += ${iter29}->write($output);
        }
      }
      $output->writeListEnd();
    }
    $xfer += $output->writeFieldEnd();
  }
  $xfer += $output->writeFieldStop();
  $xfer += $output->writeStructEnd();
  return $xfer;
}

package Hadoop::API::HadoopServiceBaseIf;

sub getVersionInfo{
  my $self = shift;
  my $ctx = shift;

  die 'implement interface';
}
sub getRuntimeInfo{
  my $self = shift;
  my $ctx = shift;

  die 'implement interface';
}
sub getThreadDump{
  my $self = shift;
  my $ctx = shift;

  die 'implement interface';
}
package Hadoop::API::HadoopServiceBaseRest;

sub new {
  my $classname=shift;
  my $impl     =shift;
  my $self     ={ impl => $impl };

  return bless($self,$classname);
}

sub getVersionInfo{
  my $self = shift;
  my $request = shift;

  my $ctx = ($request->{'ctx'}) ? $request->{'ctx'} : undef;
  return $self->{impl}->getVersionInfo($ctx);
}

sub getRuntimeInfo{
  my $self = shift;
  my $request = shift;

  my $ctx = ($request->{'ctx'}) ? $request->{'ctx'} : undef;
  return $self->{impl}->getRuntimeInfo($ctx);
}

sub getThreadDump{
  my $self = shift;
  my $request = shift;

  my $ctx = ($request->{'ctx'}) ? $request->{'ctx'} : undef;
  return $self->{impl}->getThreadDump($ctx);
}

package Hadoop::API::HadoopServiceBaseClient;

use base('Hadoop::API::HadoopServiceBaseIf');
sub new {
  my $classname = shift;
  my $input     = shift;
  my $output    = shift;
  my $self      = {};
    $self->{input}  = $input;
    $self->{output} = defined $output ? $output : $input;
    $self->{seqid}  = 0;
  return bless($self,$classname);
}

sub getVersionInfo{
  my $self = shift;
  my $ctx = shift;

    $self->send_getVersionInfo($ctx);
  return $self->recv_getVersionInfo();
}

sub send_getVersionInfo{
  my $self = shift;
  my $ctx = shift;

  $self->{output}->writeMessageBegin('getVersionInfo', TMessageType::CALL, $self->{seqid});
  my $args = new Hadoop::API::HadoopServiceBase_getVersionInfo_args();
  $args->{ctx} = $ctx;
  $args->write($self->{output});
  $self->{output}->writeMessageEnd();
  $self->{output}->getTransport()->flush();
}

sub recv_getVersionInfo{
  my $self = shift;

  my $rseqid = 0;
  my $fname;
  my $mtype = 0;

  $self->{input}->readMessageBegin(\$fname, \$mtype, \$rseqid);
  if ($mtype == TMessageType::EXCEPTION) {
    my $x = new TApplicationException();
    $x->read($self->{input});
    $self->{input}->readMessageEnd();
    die $x;
  }
  my $result = new Hadoop::API::HadoopServiceBase_getVersionInfo_result();
  $result->read($self->{input});
  $self->{input}->readMessageEnd();

  if (defined $result->{success} ) {
    return $result->{success};
  }
  die "getVersionInfo failed: unknown result";
}
sub getRuntimeInfo{
  my $self = shift;
  my $ctx = shift;

    $self->send_getRuntimeInfo($ctx);
  return $self->recv_getRuntimeInfo();
}

sub send_getRuntimeInfo{
  my $self = shift;
  my $ctx = shift;

  $self->{output}->writeMessageBegin('getRuntimeInfo', TMessageType::CALL, $self->{seqid});
  my $args = new Hadoop::API::HadoopServiceBase_getRuntimeInfo_args();
  $args->{ctx} = $ctx;
  $args->write($self->{output});
  $self->{output}->writeMessageEnd();
  $self->{output}->getTransport()->flush();
}

sub recv_getRuntimeInfo{
  my $self = shift;

  my $rseqid = 0;
  my $fname;
  my $mtype = 0;

  $self->{input}->readMessageBegin(\$fname, \$mtype, \$rseqid);
  if ($mtype == TMessageType::EXCEPTION) {
    my $x = new TApplicationException();
    $x->read($self->{input});
    $self->{input}->readMessageEnd();
    die $x;
  }
  my $result = new Hadoop::API::HadoopServiceBase_getRuntimeInfo_result();
  $result->read($self->{input});
  $self->{input}->readMessageEnd();

  if (defined $result->{success} ) {
    return $result->{success};
  }
  die "getRuntimeInfo failed: unknown result";
}
sub getThreadDump{
  my $self = shift;
  my $ctx = shift;

    $self->send_getThreadDump($ctx);
  return $self->recv_getThreadDump();
}

sub send_getThreadDump{
  my $self = shift;
  my $ctx = shift;

  $self->{output}->writeMessageBegin('getThreadDump', TMessageType::CALL, $self->{seqid});
  my $args = new Hadoop::API::HadoopServiceBase_getThreadDump_args();
  $args->{ctx} = $ctx;
  $args->write($self->{output});
  $self->{output}->writeMessageEnd();
  $self->{output}->getTransport()->flush();
}

sub recv_getThreadDump{
  my $self = shift;

  my $rseqid = 0;
  my $fname;
  my $mtype = 0;

  $self->{input}->readMessageBegin(\$fname, \$mtype, \$rseqid);
  if ($mtype == TMessageType::EXCEPTION) {
    my $x = new TApplicationException();
    $x->read($self->{input});
    $self->{input}->readMessageEnd();
    die $x;
  }
  my $result = new Hadoop::API::HadoopServiceBase_getThreadDump_result();
  $result->read($self->{input});
  $self->{input}->readMessageEnd();

  if (defined $result->{success} ) {
    return $result->{success};
  }
  die "getThreadDump failed: unknown result";
}
package Hadoop::API::HadoopServiceBaseProcessor;

sub new {
    my $classname = shift;
    my $handler   = shift;
    my $self      = {};
    $self->{handler} = $handler;
    return bless($self,$classname);
}

sub process {
    my $self   = shift;
    my $input  = shift;
    my $output = shift;
    my $rseqid = 0;
    my $fname  = undef;
    my $mtype  = 0;

    $input->readMessageBegin(\$fname, \$mtype, \$rseqid);
    my $methodname = 'process_'.$fname;
    if (!method_exists($self, $methodname)) {
      $input->skip(TType::STRUCT);
      $input->readMessageEnd();
      my $x = new TApplicationException('Function '.$fname.' not implemented.', TApplicationException::UNKNOWN_METHOD);
      $output->writeMessageBegin($fname, TMessageType::EXCEPTION, $rseqid);
      $x->write($output);
      $output->writeMessageEnd();
      $output->getTransport()->flush();
      return;
    }
    $self->$methodname($rseqid, $input, $output);
    return 1;
  }

sub process_getVersionInfo{
    my $self = shift;
    my ($seqid, $input, $output); 
    my $args = new Hadoop::API::HadoopServiceBase_getVersionInfo_args();
    $args->read($input);
    $input->readMessageEnd();
    my $result = new Hadoop::API::HadoopServiceBase_getVersionInfo_result();
    $result->{success} = $self->{handler}->getVersionInfo($args->ctx);
      $output->writeMessageBegin('getVersionInfo', TMessageType::REPLY, $seqid);
      $result->write($output);
      $output->getTransport()->flush();
  }
sub process_getRuntimeInfo{
    my $self = shift;
    my ($seqid, $input, $output); 
    my $args = new Hadoop::API::HadoopServiceBase_getRuntimeInfo_args();
    $args->read($input);
    $input->readMessageEnd();
    my $result = new Hadoop::API::HadoopServiceBase_getRuntimeInfo_result();
    $result->{success} = $self->{handler}->getRuntimeInfo($args->ctx);
      $output->writeMessageBegin('getRuntimeInfo', TMessageType::REPLY, $seqid);
      $result->write($output);
      $output->getTransport()->flush();
  }
sub process_getThreadDump{
    my $self = shift;
    my ($seqid, $input, $output); 
    my $args = new Hadoop::API::HadoopServiceBase_getThreadDump_args();
    $args->read($input);
    $input->readMessageEnd();
    my $result = new Hadoop::API::HadoopServiceBase_getThreadDump_result();
    $result->{success} = $self->{handler}->getThreadDump($args->ctx);
      $output->writeMessageBegin('getThreadDump', TMessageType::REPLY, $seqid);
      $result->write($output);
      $output->getTransport()->flush();
  }
1;
