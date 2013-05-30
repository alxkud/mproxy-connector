// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/queueManagement?wsdl
//  >Importer : http://localhost:8088/queueManagement?wsdl>0
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:22:31 - - $Rev: 56641 $)
// ************************************************************************ //

unit queueManagement;

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
  // !:anyType         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  entry                = class;                 { "http://operations.management.medimail.mproxy.cmp.com/"[Cplx] }
  mproxyIntegrationMessage = class;             { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatus = class;                { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusStrings = class;         { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusMessage = class;         { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusIMessage = class;        { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mailBoxMessageData   = class;                 { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }
  mailBoxMessage       = class;                 { "http://operations.management.medimail.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.management.medimail.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  { "http://operations.management.medimail.mproxy.cmp.com/"[GblSmpl] }
  mailBoxMessageStatus = (
      CERTIFICATION_APPROVED, 
      FLUSHED, 
      FLUSHING, 
      GENERAL_ERROR, 
      IN_PROCESS, 
      MERGED, 
      NOT_MERGED, 
      NOT_READ, 
      READ_, 
      RECEIVE_ERROR, 
      RECEIVED, 
      SEND_ERROR, 
      SENDING, 
      SENT
  );

  { "http://operations.management.medimail.mproxy.cmp.com/"[GblSmpl] }
  mailBoxMessageKind = (NORMAL, PARTITIONED, ACKNOWLEDGE);

  { "http://operations.management.medimail.mproxy.cmp.com/"[GblSmpl] }
  mailBoxType = (ERROR, INBOX, OUTBOX, SENTBOX, TRASH);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : entry, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  entry = class(TRemotable)
  private
    Fkey: Variant;
    Fkey_Specified: boolean;
    Fvalue: Variant;
    Fvalue_Specified: boolean;
    procedure Setkey(Index: Integer; const AVariant: Variant);
    function  key_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AVariant: Variant);
    function  value_Specified(Index: Integer): boolean;
  published
    property key:   Variant  Index (IS_OPTN or IS_UNQL) read Fkey write Setkey stored key_Specified;
    property value: Variant  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;

  metadata   = array of entry;                  { "http://operations.management.medimail.mproxy.cmp.com/"[Cplx] }
  Array_Of_mailBoxMessage = array of mailBoxMessage;   { "http://operations.management.medimail.mproxy.cmp.com/"[GblUbnd] }
  Array_Of_mproxyIntegrationMessage = array of mproxyIntegrationMessage;   { "http://operations.management.medimail.mproxy.cmp.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : mproxyIntegrationMessage, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyIntegrationMessage = class(TRemotable)
  private
    Fmetadata: metadata;
    FmproxyXMLMessage: string;
    FmproxyXMLMessage_Specified: boolean;
    procedure SetmproxyXMLMessage(Index: Integer; const Astring: string);
    function  mproxyXMLMessage_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property metadata:         metadata  Index (IS_UNQL) read Fmetadata write Fmetadata;
    property mproxyXMLMessage: string    Index (IS_OPTN or IS_UNQL) read FmproxyXMLMessage write SetmproxyXMLMessage stored mproxyXMLMessage_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
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
  // XML       : mproxyOperationStatusStrings, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusStrings = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_string;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  value_Specified(Index: Integer): boolean;
  published
    property detailedInfo:    string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_string        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatusMessage, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusMessage = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_mailBoxMessage;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_mailBoxMessage: Array_Of_mailBoxMessage);
    function  value_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property detailedInfo:    string                   Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult    Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_mailBoxMessage  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatusIMessage, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusIMessage = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_mproxyIntegrationMessage;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_mproxyIntegrationMessage: Array_Of_mproxyIntegrationMessage);
    function  value_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property detailedInfo:    string                             Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult              Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_mproxyIntegrationMessage  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mailBoxMessageData, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxMessageData = class(TRemotable)
  private
    Fblob: TByteDynArray;
    Fblob_Specified: boolean;
    FcheckSum: TByteDynArray;
    FcheckSum_Specified: boolean;
    Fid: Integer;
    Fid_Specified: boolean;
    FmproxyMessage: TByteDynArray;
    FmproxyMessage_Specified: boolean;
    procedure Setblob(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  blob_Specified(Index: Integer): boolean;
    procedure SetcheckSum(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  checkSum_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInteger: Integer);
    function  id_Specified(Index: Integer): boolean;
    procedure SetmproxyMessage(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  mproxyMessage_Specified(Index: Integer): boolean;
  published
    property blob:          TByteDynArray  Index (IS_OPTN or IS_UNQL) read Fblob write Setblob stored blob_Specified;
    property checkSum:      TByteDynArray  Index (IS_OPTN or IS_UNQL) read FcheckSum write SetcheckSum stored checkSum_Specified;
    property id:            Integer        Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property mproxyMessage: TByteDynArray  Index (IS_OPTN or IS_UNQL) read FmproxyMessage write SetmproxyMessage stored mproxyMessage_Specified;
  end;



  // ************************************************************************ //
  // XML       : mailBoxMessage, global, <complexType>
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxMessage = class(TRemotable)
  private
    Faccount: string;
    Faccount_Specified: boolean;
    FattachmentNumber: Integer;
    FattachmentNumber_Specified: boolean;
    FattachmentsTotal: Integer;
    FattachmentsTotal_Specified: boolean;
    Fdate: TXSDateTime;
    Fdate_Specified: boolean;
    Fguid: string;
    Fguid_Specified: boolean;
    Fid: Integer;
    Fid_Specified: boolean;
    Finfo: mailBoxMessageData;
    Finfo_Specified: boolean;
    Flocation: mailBoxType;
    Flocation_Specified: boolean;
    FmessageKind: mailBoxMessageKind;
    FmessageKind_Specified: boolean;
    FpartNumber: Integer;
    FpartNumber_Specified: boolean;
    FpartsTotal: Integer;
    FpartsTotal_Specified: boolean;
    Freceiver: string;
    Freceiver_Specified: boolean;
    FresourceName: string;
    FresourceName_Specified: boolean;
    Fsender: string;
    Fsender_Specified: boolean;
    Fstatus: mailBoxMessageStatus;
    Fstatus_Specified: boolean;
    procedure Setaccount(Index: Integer; const Astring: string);
    function  account_Specified(Index: Integer): boolean;
    procedure SetattachmentNumber(Index: Integer; const AInteger: Integer);
    function  attachmentNumber_Specified(Index: Integer): boolean;
    procedure SetattachmentsTotal(Index: Integer; const AInteger: Integer);
    function  attachmentsTotal_Specified(Index: Integer): boolean;
    procedure Setdate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  date_Specified(Index: Integer): boolean;
    procedure Setguid(Index: Integer; const Astring: string);
    function  guid_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInteger: Integer);
    function  id_Specified(Index: Integer): boolean;
    procedure Setinfo(Index: Integer; const AmailBoxMessageData: mailBoxMessageData);
    function  info_Specified(Index: Integer): boolean;
    procedure Setlocation(Index: Integer; const AmailBoxType: mailBoxType);
    function  location_Specified(Index: Integer): boolean;
    procedure SetmessageKind(Index: Integer; const AmailBoxMessageKind: mailBoxMessageKind);
    function  messageKind_Specified(Index: Integer): boolean;
    procedure SetpartNumber(Index: Integer; const AInteger: Integer);
    function  partNumber_Specified(Index: Integer): boolean;
    procedure SetpartsTotal(Index: Integer; const AInteger: Integer);
    function  partsTotal_Specified(Index: Integer): boolean;
    procedure Setreceiver(Index: Integer; const Astring: string);
    function  receiver_Specified(Index: Integer): boolean;
    procedure SetresourceName(Index: Integer; const Astring: string);
    function  resourceName_Specified(Index: Integer): boolean;
    procedure Setsender(Index: Integer; const Astring: string);
    function  sender_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AmailBoxMessageStatus: mailBoxMessageStatus);
    function  status_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property account:          string                Index (IS_OPTN or IS_UNQL) read Faccount write Setaccount stored account_Specified;
    property attachmentNumber: Integer               Index (IS_OPTN or IS_UNQL) read FattachmentNumber write SetattachmentNumber stored attachmentNumber_Specified;
    property attachmentsTotal: Integer               Index (IS_OPTN or IS_UNQL) read FattachmentsTotal write SetattachmentsTotal stored attachmentsTotal_Specified;
    property date:             TXSDateTime           Index (IS_OPTN or IS_UNQL) read Fdate write Setdate stored date_Specified;
    property guid:             string                Index (IS_OPTN or IS_UNQL) read Fguid write Setguid stored guid_Specified;
    property id:               Integer               Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property info:             mailBoxMessageData    Index (IS_OPTN or IS_UNQL) read Finfo write Setinfo stored info_Specified;
    property location:         mailBoxType           Index (IS_OPTN or IS_UNQL) read Flocation write Setlocation stored location_Specified;
    property messageKind:      mailBoxMessageKind    Index (IS_OPTN or IS_UNQL) read FmessageKind write SetmessageKind stored messageKind_Specified;
    property partNumber:       Integer               Index (IS_OPTN or IS_UNQL) read FpartNumber write SetpartNumber stored partNumber_Specified;
    property partsTotal:       Integer               Index (IS_OPTN or IS_UNQL) read FpartsTotal write SetpartsTotal stored partsTotal_Specified;
    property receiver:         string                Index (IS_OPTN or IS_UNQL) read Freceiver write Setreceiver stored receiver_Specified;
    property resourceName:     string                Index (IS_OPTN or IS_UNQL) read FresourceName write SetresourceName stored resourceName_Specified;
    property sender:           string                Index (IS_OPTN or IS_UNQL) read Fsender write Setsender stored sender_Specified;
    property status:           mailBoxMessageStatus  Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
  end;


  // ************************************************************************ //
  // Espace de nommage : http://operations.management.medimail.mproxy.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : QueueManagerServiceSoapBinding
  // service   : QueueManagerService
  // port      : MediMailQueueManagementPort
  // URL       : http://localhost:8088/queueManagement
  // ************************************************************************ //
  MediMailQueueManagement = interface(IInvokable)
  ['{4ED3C972-0E36-34C6-87B8-9EC335D53BEC}']
    function  flushMessage(const mailBoxMessageId: Integer): mproxyOperationStatus; stdcall;
    function  sendEHealthMessage(const mailBoxAccountId: string; const ehealthType: string; const ehealthValue: string; const ehealthAppID: string; const fileLocation: string; const subject: string; 
                                 const textMessage: string): mproxyOperationStatus; stdcall;
    function  reprocessMessageById(const messageId: Integer): mproxyOperationStatus; stdcall;
    function  flushAllMessages(const mailBoxAccountId: string): mproxyOperationStatus; stdcall;
    function  deleteAllMessages(const mailBoxAccountId: string; const mailBoxType: mailBoxType): mproxyOperationStatus; stdcall;
    function  getMessageIdsByType(const mailBoxAccountId: string; const mailBoxType: string): mproxyOperationStatusStrings; stdcall;
    function  sendAllMessages(const mailBoxAccountId: string): mproxyOperationStatus; stdcall;
    function  deleteMessage(const mailBoxMessageId: Integer): mproxyOperationStatus; stdcall;
    function  sendSimpleMessage(const mailBoxAccountId: string; const destinationLdapUid: string; const fileLocation: string; const subject: string; const textMessage: string): mproxyOperationStatus; stdcall;
    function  getMessageIdsByKindAccount(const accountId: string; const mailBoxTypeId: mailBoxType): mproxyOperationStatusStrings; stdcall;
    function  getMessageById(const messageId: Integer): mproxyOperationStatusMessage; stdcall;
    function  sendAsXml(const mailBoxAccountId: string; const xmlMessageB64: string): mproxyOperationStatus; stdcall;
    function  getIMessageById(const messageId: Integer): mproxyOperationStatusIMessage; stdcall;
    function  getMessageIds(const mailBoxAccountId: string): mproxyOperationStatusStrings; stdcall;
    function  getMediMailDynamicVariables: mproxyOperationStatusStrings; stdcall;
  end;

function GetMediMailQueueManagement(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): MediMailQueueManagement;


implementation
  uses SysUtils;

function GetMediMailQueueManagement(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): MediMailQueueManagement;
const
  defWSDL = 'http://localhost:8088/queueManagement?wsdl';
  defURL  = 'http://localhost:8088/queueManagement';
  defSvc  = 'QueueManagerService';
  defPrt  = 'MediMailQueueManagementPort';
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
    Result := (RIO as MediMailQueueManagement);
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


procedure entry.Setkey(Index: Integer; const AVariant: Variant);
begin
  Fkey := AVariant;
  Fkey_Specified := True;
end;

function entry.key_Specified(Index: Integer): boolean;
begin
  Result := Fkey_Specified;
end;

procedure entry.Setvalue(Index: Integer; const AVariant: Variant);
begin
  Fvalue := AVariant;
  Fvalue_Specified := True;
end;

function entry.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor mproxyIntegrationMessage.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fmetadata)-1 do
    SysUtils.FreeAndNil(Fmetadata[I]);
  System.SetLength(Fmetadata, 0);
  inherited Destroy;
end;

procedure mproxyIntegrationMessage.SetmproxyXMLMessage(Index: Integer; const Astring: string);
begin
  FmproxyXMLMessage := Astring;
  FmproxyXMLMessage_Specified := True;
end;

function mproxyIntegrationMessage.mproxyXMLMessage_Specified(Index: Integer): boolean;
begin
  Result := FmproxyXMLMessage_Specified;
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

procedure mproxyOperationStatusStrings.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusStrings.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusStrings.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusStrings.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusStrings.Setvalue(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Fvalue := AArray_Of_string;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusStrings.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor mproxyOperationStatusMessage.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusMessage.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusMessage.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusMessage.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusMessage.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusMessage.Setvalue(Index: Integer; const AArray_Of_mailBoxMessage: Array_Of_mailBoxMessage);
begin
  Fvalue := AArray_Of_mailBoxMessage;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusMessage.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor mproxyOperationStatusIMessage.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusIMessage.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusIMessage.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusIMessage.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusIMessage.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusIMessage.Setvalue(Index: Integer; const AArray_Of_mproxyIntegrationMessage: Array_Of_mproxyIntegrationMessage);
begin
  Fvalue := AArray_Of_mproxyIntegrationMessage;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusIMessage.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure mailBoxMessageData.Setblob(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fblob := ATByteDynArray;
  Fblob_Specified := True;
end;

function mailBoxMessageData.blob_Specified(Index: Integer): boolean;
begin
  Result := Fblob_Specified;
end;

procedure mailBoxMessageData.SetcheckSum(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FcheckSum := ATByteDynArray;
  FcheckSum_Specified := True;
end;

function mailBoxMessageData.checkSum_Specified(Index: Integer): boolean;
begin
  Result := FcheckSum_Specified;
end;

procedure mailBoxMessageData.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function mailBoxMessageData.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxMessageData.SetmproxyMessage(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FmproxyMessage := ATByteDynArray;
  FmproxyMessage_Specified := True;
end;

function mailBoxMessageData.mproxyMessage_Specified(Index: Integer): boolean;
begin
  Result := FmproxyMessage_Specified;
end;

destructor mailBoxMessage.Destroy;
begin
  SysUtils.FreeAndNil(Fdate);
  SysUtils.FreeAndNil(Finfo);
  inherited Destroy;
end;

procedure mailBoxMessage.Setaccount(Index: Integer; const Astring: string);
begin
  Faccount := Astring;
  Faccount_Specified := True;
end;

function mailBoxMessage.account_Specified(Index: Integer): boolean;
begin
  Result := Faccount_Specified;
end;

procedure mailBoxMessage.SetattachmentNumber(Index: Integer; const AInteger: Integer);
begin
  FattachmentNumber := AInteger;
  FattachmentNumber_Specified := True;
end;

function mailBoxMessage.attachmentNumber_Specified(Index: Integer): boolean;
begin
  Result := FattachmentNumber_Specified;
end;

procedure mailBoxMessage.SetattachmentsTotal(Index: Integer; const AInteger: Integer);
begin
  FattachmentsTotal := AInteger;
  FattachmentsTotal_Specified := True;
end;

function mailBoxMessage.attachmentsTotal_Specified(Index: Integer): boolean;
begin
  Result := FattachmentsTotal_Specified;
end;

procedure mailBoxMessage.Setdate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  Fdate := ATXSDateTime;
  Fdate_Specified := True;
end;

function mailBoxMessage.date_Specified(Index: Integer): boolean;
begin
  Result := Fdate_Specified;
end;

procedure mailBoxMessage.Setguid(Index: Integer; const Astring: string);
begin
  Fguid := Astring;
  Fguid_Specified := True;
end;

function mailBoxMessage.guid_Specified(Index: Integer): boolean;
begin
  Result := Fguid_Specified;
end;

procedure mailBoxMessage.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function mailBoxMessage.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxMessage.Setinfo(Index: Integer; const AmailBoxMessageData: mailBoxMessageData);
begin
  Finfo := AmailBoxMessageData;
  Finfo_Specified := True;
end;

function mailBoxMessage.info_Specified(Index: Integer): boolean;
begin
  Result := Finfo_Specified;
end;

procedure mailBoxMessage.Setlocation(Index: Integer; const AmailBoxType: mailBoxType);
begin
  Flocation := AmailBoxType;
  Flocation_Specified := True;
end;

function mailBoxMessage.location_Specified(Index: Integer): boolean;
begin
  Result := Flocation_Specified;
end;

procedure mailBoxMessage.SetmessageKind(Index: Integer; const AmailBoxMessageKind: mailBoxMessageKind);
begin
  FmessageKind := AmailBoxMessageKind;
  FmessageKind_Specified := True;
end;

function mailBoxMessage.messageKind_Specified(Index: Integer): boolean;
begin
  Result := FmessageKind_Specified;
end;

procedure mailBoxMessage.SetpartNumber(Index: Integer; const AInteger: Integer);
begin
  FpartNumber := AInteger;
  FpartNumber_Specified := True;
end;

function mailBoxMessage.partNumber_Specified(Index: Integer): boolean;
begin
  Result := FpartNumber_Specified;
end;

procedure mailBoxMessage.SetpartsTotal(Index: Integer; const AInteger: Integer);
begin
  FpartsTotal := AInteger;
  FpartsTotal_Specified := True;
end;

function mailBoxMessage.partsTotal_Specified(Index: Integer): boolean;
begin
  Result := FpartsTotal_Specified;
end;

procedure mailBoxMessage.Setreceiver(Index: Integer; const Astring: string);
begin
  Freceiver := Astring;
  Freceiver_Specified := True;
end;

function mailBoxMessage.receiver_Specified(Index: Integer): boolean;
begin
  Result := Freceiver_Specified;
end;

procedure mailBoxMessage.SetresourceName(Index: Integer; const Astring: string);
begin
  FresourceName := Astring;
  FresourceName_Specified := True;
end;

function mailBoxMessage.resourceName_Specified(Index: Integer): boolean;
begin
  Result := FresourceName_Specified;
end;

procedure mailBoxMessage.Setsender(Index: Integer; const Astring: string);
begin
  Fsender := Astring;
  Fsender_Specified := True;
end;

function mailBoxMessage.sender_Specified(Index: Integer): boolean;
begin
  Result := Fsender_Specified;
end;

procedure mailBoxMessage.Setstatus(Index: Integer; const AmailBoxMessageStatus: mailBoxMessageStatus);
begin
  Fstatus := AmailBoxMessageStatus;
  Fstatus_Specified := True;
end;

function mailBoxMessage.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

initialization
  { MediMailQueueManagement }
  InvRegistry.RegisterInterface(TypeInfo(MediMailQueueManagement), 'http://operations.management.medimail.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MediMailQueueManagement), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MediMailQueueManagement), ioLiteral);
  { MediMailQueueManagement.flushMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'flushMessage', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.sendEHealthMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'sendEHealthMessage', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.reprocessMessageById }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'reprocessMessageById', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.flushAllMessages }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'flushAllMessages', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.deleteAllMessages }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'deleteAllMessages', 'mailBoxType', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'deleteAllMessages', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getMessageIdsByType }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMessageIdsByType', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.sendAllMessages }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'sendAllMessages', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.deleteMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'deleteMessage', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.sendSimpleMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'sendSimpleMessage', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getMessageIdsByKindAccount }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMessageIdsByKindAccount', 'mailBoxTypeId', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMessageIdsByKindAccount', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getMessageById }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMessageById', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.sendAsXml }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'sendAsXml', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getIMessageById }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getIMessageById', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getMessageIds }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMessageIds', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  { MediMailQueueManagement.getMediMailDynamicVariables }
  InvRegistry.RegisterParamInfo(TypeInfo(MediMailQueueManagement), 'getMediMailDynamicVariables', 'return', '',
                                '[Namespace="http://operations.management.medimail.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSClass(entry, 'http://operations.management.medimail.mproxy.cmp.com/', 'entry');
  RemClassRegistry.RegisterXSInfo(TypeInfo(metadata), 'http://operations.management.medimail.mproxy.cmp.com/', 'metadata');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mailBoxMessage), 'http://operations.management.medimail.mproxy.cmp.com/', 'Array_Of_mailBoxMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mproxyIntegrationMessage), 'http://operations.management.medimail.mproxy.cmp.com/', 'Array_Of_mproxyIntegrationMessage');
  RemClassRegistry.RegisterXSClass(mproxyIntegrationMessage, 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyIntegrationMessage');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(mproxyIntegrationMessage), 'metadata', '[ArrayItemName="entry"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusStrings, 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyOperationStatusStrings');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusMessage, 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyOperationStatusMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mailBoxMessageStatus), 'http://operations.management.medimail.mproxy.cmp.com/', 'mailBoxMessageStatus');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(mailBoxMessageStatus), 'READ_', 'READ');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusIMessage, 'http://operations.management.medimail.mproxy.cmp.com/', 'mproxyOperationStatusIMessage');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mailBoxMessageKind), 'http://operations.management.medimail.mproxy.cmp.com/', 'mailBoxMessageKind');
  RemClassRegistry.RegisterXSClass(mailBoxMessageData, 'http://operations.management.medimail.mproxy.cmp.com/', 'mailBoxMessageData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mailBoxType), 'http://operations.management.medimail.mproxy.cmp.com/', 'mailBoxType');
  RemClassRegistry.RegisterXSClass(mailBoxMessage, 'http://operations.management.medimail.mproxy.cmp.com/', 'mailBoxMessage');

end.