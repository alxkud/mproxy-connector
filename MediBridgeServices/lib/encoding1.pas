// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/encoding?wsdl
//  >Importer : http://localhost:8088/encoding?wsdl>0
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:08:50 - - $Rev: 56641 $)
// ************************************************************************ //

unit encoding1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // Les types suivants mentionnés dans le document WSDL ne sont pas représentés
  // dans ce fichier. Ce sont des alias[@] d'autres types représentés ou alors ils étaient référencés
  // mais jamais[!] déclarés dans le document. Les types de la dernière catégorie
  // sont en principe mappés sur des types Embarcadero ou XML prédéfinis/connus. Toutefois, ils peuvent aussi 
  // signaler des documents WSDL incorrects n'ayant pas réussi à déclarer ou importer un type de schéma.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  mproxyAttachment     = class;                 { "http://operations.ehealth.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatus = class;                { "http://operations.ehealth.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.ehealth.mproxy.cmp.com/"[GblSmpl] }
  mproxyMessageStatus = (NONE, MMS_MESSAGE_ENQUIRED_FOR_ENCODING, MMS_MESSAGE_ENQUIRED_FOR_DECODING, MMS_MESSAGE_FAILED_TO_ENCODE, MMS_MESSAGE_FAILED_TO_DECODE, MMS_MESSAGE_SUCCESSFULLY_ENCODED, MMS_MESSAGE_SUCCESSFULLY_DECODED);

  { "http://operations.ehealth.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  mproxyOperationStatusArray = array of mproxyOperationStatus;   { "http://operations.ehealth.mproxy.cmp.com/"[GblCplx] }
  mproxyAttachmentArray = array of mproxyAttachment;   { "http://operations.ehealth.mproxy.cmp.com/"[GblCplx] }


  // ************************************************************************ //
  // XML       : mproxyAttachment, global, <complexType>
  // Espace de nommage : http://operations.ehealth.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyAttachment = class(TRemotable)
  private
    FattachmentId: string;
    FattachmentId_Specified: boolean;
    Fcontent: TByteDynArray;
    Fcontent_Specified: boolean;
    Finfo: string;
    Finfo_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    Fstatus: mproxyMessageStatus;
    Fstatus_Specified: boolean;
    procedure SetattachmentId(Index: Integer; const Astring: string);
    function  attachmentId_Specified(Index: Integer): boolean;
    procedure Setcontent(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  content_Specified(Index: Integer): boolean;
    procedure Setinfo(Index: Integer; const Astring: string);
    function  info_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AmproxyMessageStatus: mproxyMessageStatus);
    function  status_Specified(Index: Integer): boolean;
  published
    property attachmentId: string               Index (IS_OPTN or IS_UNQL) read FattachmentId write SetattachmentId stored attachmentId_Specified;
    property content:      TByteDynArray        Index (IS_OPTN or IS_UNQL) read Fcontent write Setcontent stored content_Specified;
    property info:         string               Index (IS_OPTN or IS_UNQL) read Finfo write Setinfo stored info_Specified;
    property name_:        string               Index (IS_OPTN or IS_UNQL) read Fname_ write Setname_ stored name__Specified;
    property status:       mproxyMessageStatus  Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://operations.ehealth.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatus = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationOutputValue: string;
    FoperationOutputValue_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationOutputValue(Index: Integer; const Astring: string);
    function  operationOutputValue_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
  published
    property detailedInfo:         string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationOutputValue: string                 Index (IS_OPTN or IS_UNQL) read FoperationOutputValue write SetoperationOutputValue stored operationOutputValue_Specified;
    property operationResult:      mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
  end;


  // ************************************************************************ //
  // Espace de nommage : http://operations.ehealth.mproxy.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : EncodingServiceSoapBinding
  // service   : EncodingService
  // port      : EncodingPort
  // URL       : http://localhost:8088/encoding
  // ************************************************************************ //
  Encoding = interface(IInvokable)
  ['{6A79C5C7-422A-8A25-7905-81D298FFB6CF}']
    function  popData(const keyLabel: string; const pinCode: string): mproxyOperationStatusArray; stdcall;
    function  popMessages(const keyLabel: string; const pinCode: string): mproxyAttachmentArray; stdcall;
    function  encodeMessage(const keyLabel: string; const pinCode: string; const ETK: string): mproxyOperationStatus; stdcall;
    function  pushMessage(const keyLabel: string; const pinCode: string; const mproxyMessage: mproxyAttachment): mproxyOperationStatus; stdcall;
    function  pushData(const keyLabel: string; const pinCode: string; const data: string): mproxyOperationStatus; stdcall;
    function  getMessageCount(const keyLabel: string; const pinCode: string): Integer; stdcall;
  end;

function GetEncoding(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Encoding;


implementation
  uses SysUtils;

function GetEncoding(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Encoding;
const
  defWSDL = 'http://localhost:8088/encoding?wsdl';
  defURL  = 'http://localhost:8088/encoding';
  defSvc  = 'EncodingService';
  defPrt  = 'EncodingPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as Encoding);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure mproxyAttachment.SetattachmentId(Index: Integer; const Astring: string);
begin
  FattachmentId := Astring;
  FattachmentId_Specified := True;
end;

function mproxyAttachment.attachmentId_Specified(Index: Integer): boolean;
begin
  Result := FattachmentId_Specified;
end;

procedure mproxyAttachment.Setcontent(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fcontent := ATByteDynArray;
  Fcontent_Specified := True;
end;

function mproxyAttachment.content_Specified(Index: Integer): boolean;
begin
  Result := Fcontent_Specified;
end;

procedure mproxyAttachment.Setinfo(Index: Integer; const Astring: string);
begin
  Finfo := Astring;
  Finfo_Specified := True;
end;

function mproxyAttachment.info_Specified(Index: Integer): boolean;
begin
  Result := Finfo_Specified;
end;

procedure mproxyAttachment.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function mproxyAttachment.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure mproxyAttachment.Setstatus(Index: Integer; const AmproxyMessageStatus: mproxyMessageStatus);
begin
  Fstatus := AmproxyMessageStatus;
  Fstatus_Specified := True;
end;

function mproxyAttachment.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure mproxyOperationStatus.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatus.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatus.SetoperationOutputValue(Index: Integer; const Astring: string);
begin
  FoperationOutputValue := Astring;
  FoperationOutputValue_Specified := True;
end;

function mproxyOperationStatus.operationOutputValue_Specified(Index: Integer): boolean;
begin
  Result := FoperationOutputValue_Specified;
end;

procedure mproxyOperationStatus.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatus.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

initialization
  { Encoding }
  InvRegistry.RegisterInterface(TypeInfo(Encoding), 'http://operations.ehealth.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Encoding), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Encoding), ioLiteral);
  { Encoding.popData }
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'popData', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/", ArrayItemName="item"]');
  { Encoding.popMessages }
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'popMessages', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/", ArrayItemName="item"]');
  { Encoding.encodeMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'encodeMessage', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Encoding.pushMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'pushMessage', 'mproxyMessage', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'pushMessage', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Encoding.pushData }
  InvRegistry.RegisterParamInfo(TypeInfo(Encoding), 'pushData', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationStatusArray), 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyOperationStatusArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyMessageStatus), 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyMessageStatus');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyAttachmentArray), 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyAttachmentArray');
  RemClassRegistry.RegisterXSClass(mproxyAttachment, 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyAttachment');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(mproxyAttachment), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyOperationStatus');

end.