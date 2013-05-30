// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/mailBoxAccount?wsdl
//  >Importer : http://localhost:8088/mailBoxAccount?wsdl>0
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:08:13 - - $Rev: 56641 $)
// ************************************************************************ //

unit mailBoxAccount1;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  mailBoxAccountProperties = class;             { "http://operations.account.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusAccount = class;         { "http://operations.account.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatus = class;                { "http://operations.account.mproxy.cmp.com/"[GblCplx] }
  mailBoxAccount       = class;                 { "http://operations.account.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.account.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  Array_Of_mailBoxAccountProperties = array of mailBoxAccountProperties;   { "http://operations.account.mproxy.cmp.com/"[GblUbnd] }
  Array_Of_mailBoxAccount = array of mailBoxAccount;   { "http://operations.account.mproxy.cmp.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : mailBoxAccountProperties, global, <complexType>
  // Espace de nommage : http://operations.account.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxAccountProperties = class(TRemotable)
  private
    Fid: Integer;
    Fid_Specified: boolean;
    FpropertyId: string;
    FpropertyId_Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setid(Index: Integer; const AInteger: Integer);
    function  id_Specified(Index: Integer): boolean;
    procedure SetpropertyId(Index: Integer; const Astring: string);
    function  propertyId_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
  published
    property id:         Integer  Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property propertyId: string   Index (IS_OPTN or IS_UNQL) read FpropertyId write SetpropertyId stored propertyId_Specified;
    property value:      string   Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatusAccount, global, <complexType>
  // Espace de nommage : http://operations.account.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusAccount = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_mailBoxAccount;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_mailBoxAccount: Array_Of_mailBoxAccount);
    function  value_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property detailedInfo:    string                   Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult    Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_mailBoxAccount  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://operations.account.mproxy.cmp.com/
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
  // XML       : mailBoxAccount, global, <complexType>
  // Espace de nommage : http://operations.account.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxAccount = class(TRemotable)
  private
    Factive: Boolean;
    FbackupLocation: string;
    FbackupLocation_Specified: boolean;
    FerrorLocation: string;
    FerrorLocation_Specified: boolean;
    Fid: string;
    Fid_Specified: boolean;
    FincomingLocation: string;
    FincomingLocation_Specified: boolean;
    Flogin: string;
    Flogin_Specified: boolean;
    FloginDocs: string;
    FloginDocs_Specified: boolean;
    FmaximumMessages: Integer;
    FmaximumMessages_Specified: boolean;
    FoutgoingLocation: string;
    FoutgoingLocation_Specified: boolean;
    FoutgoingLocationActh: string;
    FoutgoingLocationActh_Specified: boolean;
    FoutgoingLocationOldId: string;
    FoutgoingLocationOldId_Specified: boolean;
    FoutgoingLocationUid: string;
    FoutgoingLocationUid_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    FpinCode: string;
    FpinCode_Specified: boolean;
    FpinCodeMexi: string;
    FpinCodeMexi_Specified: boolean;
    Fport: string;
    Fport_Specified: boolean;
    FprocessedLocation: string;
    FprocessedLocation_Specified: boolean;
    Fproperties: Array_Of_mailBoxAccountProperties;
    Fproperties_Specified: boolean;
    Fserver: string;
    Fserver_Specified: boolean;
    FserverDocs: string;
    FserverDocs_Specified: boolean;
    FuserId: string;
    FuserId_Specified: boolean;
    procedure SetbackupLocation(Index: Integer; const Astring: string);
    function  backupLocation_Specified(Index: Integer): boolean;
    procedure SeterrorLocation(Index: Integer; const Astring: string);
    function  errorLocation_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
    procedure SetincomingLocation(Index: Integer; const Astring: string);
    function  incomingLocation_Specified(Index: Integer): boolean;
    procedure Setlogin(Index: Integer; const Astring: string);
    function  login_Specified(Index: Integer): boolean;
    procedure SetloginDocs(Index: Integer; const Astring: string);
    function  loginDocs_Specified(Index: Integer): boolean;
    procedure SetmaximumMessages(Index: Integer; const AInteger: Integer);
    function  maximumMessages_Specified(Index: Integer): boolean;
    procedure SetoutgoingLocation(Index: Integer; const Astring: string);
    function  outgoingLocation_Specified(Index: Integer): boolean;
    procedure SetoutgoingLocationActh(Index: Integer; const Astring: string);
    function  outgoingLocationActh_Specified(Index: Integer): boolean;
    procedure SetoutgoingLocationOldId(Index: Integer; const Astring: string);
    function  outgoingLocationOldId_Specified(Index: Integer): boolean;
    procedure SetoutgoingLocationUid(Index: Integer; const Astring: string);
    function  outgoingLocationUid_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure SetpinCode(Index: Integer; const Astring: string);
    function  pinCode_Specified(Index: Integer): boolean;
    procedure SetpinCodeMexi(Index: Integer; const Astring: string);
    function  pinCodeMexi_Specified(Index: Integer): boolean;
    procedure Setport(Index: Integer; const Astring: string);
    function  port_Specified(Index: Integer): boolean;
    procedure SetprocessedLocation(Index: Integer; const Astring: string);
    function  processedLocation_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const AArray_Of_mailBoxAccountProperties: Array_Of_mailBoxAccountProperties);
    function  properties_Specified(Index: Integer): boolean;
    procedure Setserver(Index: Integer; const Astring: string);
    function  server_Specified(Index: Integer): boolean;
    procedure SetserverDocs(Index: Integer; const Astring: string);
    function  serverDocs_Specified(Index: Integer): boolean;
    procedure SetuserId(Index: Integer; const Astring: string);
    function  userId_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property active:                Boolean                            Index (IS_UNQL) read Factive write Factive;
    property backupLocation:        string                             Index (IS_OPTN or IS_UNQL) read FbackupLocation write SetbackupLocation stored backupLocation_Specified;
    property errorLocation:         string                             Index (IS_OPTN or IS_UNQL) read FerrorLocation write SeterrorLocation stored errorLocation_Specified;
    property id:                    string                             Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property incomingLocation:      string                             Index (IS_OPTN or IS_UNQL) read FincomingLocation write SetincomingLocation stored incomingLocation_Specified;
    property login:                 string                             Index (IS_OPTN or IS_UNQL) read Flogin write Setlogin stored login_Specified;
    property loginDocs:             string                             Index (IS_OPTN or IS_UNQL) read FloginDocs write SetloginDocs stored loginDocs_Specified;
    property maximumMessages:       Integer                            Index (IS_OPTN or IS_UNQL) read FmaximumMessages write SetmaximumMessages stored maximumMessages_Specified;
    property outgoingLocation:      string                             Index (IS_OPTN or IS_UNQL) read FoutgoingLocation write SetoutgoingLocation stored outgoingLocation_Specified;
    property outgoingLocationActh:  string                             Index (IS_OPTN or IS_UNQL) read FoutgoingLocationActh write SetoutgoingLocationActh stored outgoingLocationActh_Specified;
    property outgoingLocationOldId: string                             Index (IS_OPTN or IS_UNQL) read FoutgoingLocationOldId write SetoutgoingLocationOldId stored outgoingLocationOldId_Specified;
    property outgoingLocationUid:   string                             Index (IS_OPTN or IS_UNQL) read FoutgoingLocationUid write SetoutgoingLocationUid stored outgoingLocationUid_Specified;
    property password:              string                             Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property pinCode:               string                             Index (IS_OPTN or IS_UNQL) read FpinCode write SetpinCode stored pinCode_Specified;
    property pinCodeMexi:           string                             Index (IS_OPTN or IS_UNQL) read FpinCodeMexi write SetpinCodeMexi stored pinCodeMexi_Specified;
    property port:                  string                             Index (IS_OPTN or IS_UNQL) read Fport write Setport stored port_Specified;
    property processedLocation:     string                             Index (IS_OPTN or IS_UNQL) read FprocessedLocation write SetprocessedLocation stored processedLocation_Specified;
    property properties:            Array_Of_mailBoxAccountProperties  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fproperties write Setproperties stored properties_Specified;
    property server:                string                             Index (IS_OPTN or IS_UNQL) read Fserver write Setserver stored server_Specified;
    property serverDocs:            string                             Index (IS_OPTN or IS_UNQL) read FserverDocs write SetserverDocs stored serverDocs_Specified;
    property userId:                string                             Index (IS_OPTN or IS_UNQL) read FuserId write SetuserId stored userId_Specified;
  end;


  // ************************************************************************ //
  // Espace de nommage : http://operations.account.mproxy.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : MailBoxAccountManagementServiceSoapBinding
  // service   : MailBoxAccountManagementService
  // port      : MailBoxAccountManagementPort
  // URL       : http://localhost:8088/mailBoxAccount
  // ************************************************************************ //
  MailBoxAccountManagement = interface(IInvokable)
  ['{FC9737E7-2BC6-1A6B-E9F9-C3A4D0A47B60}']
    function  read_: mproxyOperationStatusAccount; stdcall;
    function  delete(const account: mailBoxAccount): mproxyOperationStatus; stdcall;
    function  readAll: mproxyOperationStatusAccount; stdcall;
    function  findSWUUserLogin: mproxyOperationStatus; stdcall;
    function  update(const account: mailBoxAccount): mproxyOperationStatus; stdcall;
    function  createDefault(const ldapUID: string; const queueUserId: string): mproxyOperationStatus; stdcall;
    function  create(const account: mailBoxAccount): mproxyOperationStatus; stdcall;
    function  readById(const uid: string): mproxyOperationStatusAccount; stdcall;
  end;

function GetMailBoxAccountManagement(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): MailBoxAccountManagement;


implementation
  uses SysUtils;

function GetMailBoxAccountManagement(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): MailBoxAccountManagement;
const
  defWSDL = 'http://localhost:8088/mailBoxAccount?wsdl';
  defURL  = 'http://localhost:8088/mailBoxAccount';
  defSvc  = 'MailBoxAccountManagementService';
  defPrt  = 'MailBoxAccountManagementPort';
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
    Result := (RIO as MailBoxAccountManagement);
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


procedure mailBoxAccountProperties.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function mailBoxAccountProperties.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxAccountProperties.SetpropertyId(Index: Integer; const Astring: string);
begin
  FpropertyId := Astring;
  FpropertyId_Specified := True;
end;

function mailBoxAccountProperties.propertyId_Specified(Index: Integer): boolean;
begin
  Result := FpropertyId_Specified;
end;

procedure mailBoxAccountProperties.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function mailBoxAccountProperties.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor mproxyOperationStatusAccount.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusAccount.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusAccount.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusAccount.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusAccount.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusAccount.Setvalue(Index: Integer; const AArray_Of_mailBoxAccount: Array_Of_mailBoxAccount);
begin
  Fvalue := AArray_Of_mailBoxAccount;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusAccount.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
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

destructor mailBoxAccount.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproperties)-1 do
    SysUtils.FreeAndNil(Fproperties[I]);
  System.SetLength(Fproperties, 0);
  inherited Destroy;
end;

procedure mailBoxAccount.SetbackupLocation(Index: Integer; const Astring: string);
begin
  FbackupLocation := Astring;
  FbackupLocation_Specified := True;
end;

function mailBoxAccount.backupLocation_Specified(Index: Integer): boolean;
begin
  Result := FbackupLocation_Specified;
end;

procedure mailBoxAccount.SeterrorLocation(Index: Integer; const Astring: string);
begin
  FerrorLocation := Astring;
  FerrorLocation_Specified := True;
end;

function mailBoxAccount.errorLocation_Specified(Index: Integer): boolean;
begin
  Result := FerrorLocation_Specified;
end;

procedure mailBoxAccount.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function mailBoxAccount.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxAccount.SetincomingLocation(Index: Integer; const Astring: string);
begin
  FincomingLocation := Astring;
  FincomingLocation_Specified := True;
end;

function mailBoxAccount.incomingLocation_Specified(Index: Integer): boolean;
begin
  Result := FincomingLocation_Specified;
end;

procedure mailBoxAccount.Setlogin(Index: Integer; const Astring: string);
begin
  Flogin := Astring;
  Flogin_Specified := True;
end;

function mailBoxAccount.login_Specified(Index: Integer): boolean;
begin
  Result := Flogin_Specified;
end;

procedure mailBoxAccount.SetloginDocs(Index: Integer; const Astring: string);
begin
  FloginDocs := Astring;
  FloginDocs_Specified := True;
end;

function mailBoxAccount.loginDocs_Specified(Index: Integer): boolean;
begin
  Result := FloginDocs_Specified;
end;

procedure mailBoxAccount.SetmaximumMessages(Index: Integer; const AInteger: Integer);
begin
  FmaximumMessages := AInteger;
  FmaximumMessages_Specified := True;
end;

function mailBoxAccount.maximumMessages_Specified(Index: Integer): boolean;
begin
  Result := FmaximumMessages_Specified;
end;

procedure mailBoxAccount.SetoutgoingLocation(Index: Integer; const Astring: string);
begin
  FoutgoingLocation := Astring;
  FoutgoingLocation_Specified := True;
end;

function mailBoxAccount.outgoingLocation_Specified(Index: Integer): boolean;
begin
  Result := FoutgoingLocation_Specified;
end;

procedure mailBoxAccount.SetoutgoingLocationActh(Index: Integer; const Astring: string);
begin
  FoutgoingLocationActh := Astring;
  FoutgoingLocationActh_Specified := True;
end;

function mailBoxAccount.outgoingLocationActh_Specified(Index: Integer): boolean;
begin
  Result := FoutgoingLocationActh_Specified;
end;

procedure mailBoxAccount.SetoutgoingLocationOldId(Index: Integer; const Astring: string);
begin
  FoutgoingLocationOldId := Astring;
  FoutgoingLocationOldId_Specified := True;
end;

function mailBoxAccount.outgoingLocationOldId_Specified(Index: Integer): boolean;
begin
  Result := FoutgoingLocationOldId_Specified;
end;

procedure mailBoxAccount.SetoutgoingLocationUid(Index: Integer; const Astring: string);
begin
  FoutgoingLocationUid := Astring;
  FoutgoingLocationUid_Specified := True;
end;

function mailBoxAccount.outgoingLocationUid_Specified(Index: Integer): boolean;
begin
  Result := FoutgoingLocationUid_Specified;
end;

procedure mailBoxAccount.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function mailBoxAccount.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure mailBoxAccount.SetpinCode(Index: Integer; const Astring: string);
begin
  FpinCode := Astring;
  FpinCode_Specified := True;
end;

function mailBoxAccount.pinCode_Specified(Index: Integer): boolean;
begin
  Result := FpinCode_Specified;
end;

procedure mailBoxAccount.SetpinCodeMexi(Index: Integer; const Astring: string);
begin
  FpinCodeMexi := Astring;
  FpinCodeMexi_Specified := True;
end;

function mailBoxAccount.pinCodeMexi_Specified(Index: Integer): boolean;
begin
  Result := FpinCodeMexi_Specified;
end;

procedure mailBoxAccount.Setport(Index: Integer; const Astring: string);
begin
  Fport := Astring;
  Fport_Specified := True;
end;

function mailBoxAccount.port_Specified(Index: Integer): boolean;
begin
  Result := Fport_Specified;
end;

procedure mailBoxAccount.SetprocessedLocation(Index: Integer; const Astring: string);
begin
  FprocessedLocation := Astring;
  FprocessedLocation_Specified := True;
end;

function mailBoxAccount.processedLocation_Specified(Index: Integer): boolean;
begin
  Result := FprocessedLocation_Specified;
end;

procedure mailBoxAccount.Setproperties(Index: Integer; const AArray_Of_mailBoxAccountProperties: Array_Of_mailBoxAccountProperties);
begin
  Fproperties := AArray_Of_mailBoxAccountProperties;
  Fproperties_Specified := True;
end;

function mailBoxAccount.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
end;

procedure mailBoxAccount.Setserver(Index: Integer; const Astring: string);
begin
  Fserver := Astring;
  Fserver_Specified := True;
end;

function mailBoxAccount.server_Specified(Index: Integer): boolean;
begin
  Result := Fserver_Specified;
end;

procedure mailBoxAccount.SetserverDocs(Index: Integer; const Astring: string);
begin
  FserverDocs := Astring;
  FserverDocs_Specified := True;
end;

function mailBoxAccount.serverDocs_Specified(Index: Integer): boolean;
begin
  Result := FserverDocs_Specified;
end;

procedure mailBoxAccount.SetuserId(Index: Integer; const Astring: string);
begin
  FuserId := Astring;
  FuserId_Specified := True;
end;

function mailBoxAccount.userId_Specified(Index: Integer): boolean;
begin
  Result := FuserId_Specified;
end;

initialization
  { MailBoxAccountManagement }
  InvRegistry.RegisterInterface(TypeInfo(MailBoxAccountManagement), 'http://operations.account.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MailBoxAccountManagement), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MailBoxAccountManagement), ioLiteral);
  { MailBoxAccountManagement.read_ }
  InvRegistry.RegisterMethodInfo(TypeInfo(MailBoxAccountManagement), 'read_', 'read', '');
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'read_', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.delete }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'delete', 'account', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'delete', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.readAll }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'readAll', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.findSWUUserLogin }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'findSWUUserLogin', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.update }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'update', 'account', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'update', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.createDefault }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'createDefault', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.create }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'create', 'account', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'create', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  { MailBoxAccountManagement.readById }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAccountManagement), 'readById', 'return', '',
                                '[Namespace="http://operations.account.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mailBoxAccountProperties), 'http://operations.account.mproxy.cmp.com/', 'Array_Of_mailBoxAccountProperties');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mailBoxAccount), 'http://operations.account.mproxy.cmp.com/', 'Array_Of_mailBoxAccount');
  RemClassRegistry.RegisterXSClass(mailBoxAccountProperties, 'http://operations.account.mproxy.cmp.com/', 'mailBoxAccountProperties');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.account.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusAccount, 'http://operations.account.mproxy.cmp.com/', 'mproxyOperationStatusAccount');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.account.mproxy.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterXSClass(mailBoxAccount, 'http://operations.account.mproxy.cmp.com/', 'mailBoxAccount');

end.