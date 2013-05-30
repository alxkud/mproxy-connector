// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/diagnostics?wsdl
//  >Importer : http://localhost:8088/diagnostics?wsdl>0
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:12:20 - - $Rev: 56641 $)
// ************************************************************************ //

unit diagnostics;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  errorLog             = class;                 { "http://operations.mule.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusError = class;           { "http://operations.mule.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatus = class;                { "http://operations.mule.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.mule.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  Array_Of_errorLog = array of errorLog;        { "http://operations.mule.mproxy.cmp.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : errorLog, global, <complexType>
  // Espace de nommage : http://operations.mule.mproxy.cmp.com/
  // ************************************************************************ //
  errorLog = class(TRemotable)
  private
    FcreationDate: TXSDateTime;
    FcreationDate_Specified: boolean;
    FerrorMessage: string;
    FerrorMessage_Specified: boolean;
    Fid: Integer;
    Fid_Specified: boolean;
    FmproxyErrorId: Int64;
    FmuleComponent: string;
    FmuleComponent_Specified: boolean;
    FstackTrace: string;
    FstackTrace_Specified: boolean;
    procedure SetcreationDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  creationDate_Specified(Index: Integer): boolean;
    procedure SeterrorMessage(Index: Integer; const Astring: string);
    function  errorMessage_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInteger: Integer);
    function  id_Specified(Index: Integer): boolean;
    procedure SetmuleComponent(Index: Integer; const Astring: string);
    function  muleComponent_Specified(Index: Integer): boolean;
    procedure SetstackTrace(Index: Integer; const Astring: string);
    function  stackTrace_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property creationDate:  TXSDateTime  Index (IS_OPTN or IS_UNQL) read FcreationDate write SetcreationDate stored creationDate_Specified;
    property errorMessage:  string       Index (IS_OPTN or IS_UNQL) read FerrorMessage write SeterrorMessage stored errorMessage_Specified;
    property id:            Integer      Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property mproxyErrorId: Int64        Index (IS_UNQL) read FmproxyErrorId write FmproxyErrorId;
    property muleComponent: string       Index (IS_OPTN or IS_UNQL) read FmuleComponent write SetmuleComponent stored muleComponent_Specified;
    property stackTrace:    string       Index (IS_OPTN or IS_UNQL) read FstackTrace write SetstackTrace stored stackTrace_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatusError, global, <complexType>
  // Espace de nommage : http://operations.mule.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusError = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_errorLog;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_errorLog: Array_Of_errorLog);
    function  value_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property detailedInfo:    string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_errorLog      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://operations.mule.mproxy.cmp.com/
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
  // Espace de nommage : http://operations.mule.mproxy.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : DiagnosticsServiceSoapBinding
  // service   : DiagnosticsService
  // port      : SystemDiagnosticsPort
  // URL       : http://localhost:8088/diagnostics
  // ************************************************************************ //
  SystemDiagnostics = interface(IInvokable)
  ['{BAC16A40-3A35-6273-8BFB-9BF6B6A119A6}']
    function  getMbeanAttribute(const sever: string; const service: string; const attribute: string): mproxyOperationStatus; stdcall;
    function  getErrorById(const arg0: Integer): mproxyOperationStatusError; stdcall;
    function  exportErrorsToFile: mproxyOperationStatus; stdcall;
    function  clearErrors: mproxyOperationStatus; stdcall;
    function  checkPortsListen(const host: string; const portsToCheckDelimitedBySemicolumn: string; const timeOutInMillis: Integer): mproxyOperationStatus; stdcall;
    function  findLastErrors(const maximumErrors: Integer): mproxyOperationStatusError; stdcall;
    function  findAllErrors: mproxyOperationStatusError; stdcall;
    function  removeErrorById(const errorId: Integer): mproxyOperationStatus; stdcall;
    function  checkPorts(const host: string; const portsToCheckDelimitedBySemicolumn: string; const timeOutInMillis: Integer): mproxyOperationStatus; stdcall;
  end;

function GetSystemDiagnostics(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SystemDiagnostics;


implementation
  uses SysUtils;

function GetSystemDiagnostics(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SystemDiagnostics;
const
  defWSDL = 'http://localhost:8088/diagnostics?wsdl';
  defURL  = 'http://localhost:8088/diagnostics';
  defSvc  = 'DiagnosticsService';
  defPrt  = 'SystemDiagnosticsPort';
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
    Result := (RIO as SystemDiagnostics);
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


destructor errorLog.Destroy;
begin
  SysUtils.FreeAndNil(FcreationDate);
  inherited Destroy;
end;

procedure errorLog.SetcreationDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FcreationDate := ATXSDateTime;
  FcreationDate_Specified := True;
end;

function errorLog.creationDate_Specified(Index: Integer): boolean;
begin
  Result := FcreationDate_Specified;
end;

procedure errorLog.SeterrorMessage(Index: Integer; const Astring: string);
begin
  FerrorMessage := Astring;
  FerrorMessage_Specified := True;
end;

function errorLog.errorMessage_Specified(Index: Integer): boolean;
begin
  Result := FerrorMessage_Specified;
end;

procedure errorLog.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function errorLog.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure errorLog.SetmuleComponent(Index: Integer; const Astring: string);
begin
  FmuleComponent := Astring;
  FmuleComponent_Specified := True;
end;

function errorLog.muleComponent_Specified(Index: Integer): boolean;
begin
  Result := FmuleComponent_Specified;
end;

procedure errorLog.SetstackTrace(Index: Integer; const Astring: string);
begin
  FstackTrace := Astring;
  FstackTrace_Specified := True;
end;

function errorLog.stackTrace_Specified(Index: Integer): boolean;
begin
  Result := FstackTrace_Specified;
end;

destructor mproxyOperationStatusError.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusError.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusError.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusError.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusError.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusError.Setvalue(Index: Integer; const AArray_Of_errorLog: Array_Of_errorLog);
begin
  Fvalue := AArray_Of_errorLog;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusError.value_Specified(Index: Integer): boolean;
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

initialization
  { SystemDiagnostics }
  InvRegistry.RegisterInterface(TypeInfo(SystemDiagnostics), 'http://operations.mule.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SystemDiagnostics), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SystemDiagnostics), ioLiteral);
  { SystemDiagnostics.getMbeanAttribute }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'getMbeanAttribute', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.getErrorById }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'getErrorById', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.exportErrorsToFile }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'exportErrorsToFile', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.clearErrors }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'clearErrors', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.checkPortsListen }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'checkPortsListen', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.findLastErrors }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'findLastErrors', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.findAllErrors }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'findAllErrors', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.removeErrorById }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'removeErrorById', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  { SystemDiagnostics.checkPorts }
  InvRegistry.RegisterParamInfo(TypeInfo(SystemDiagnostics), 'checkPorts', 'return', '',
                                '[Namespace="http://operations.mule.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_errorLog), 'http://operations.mule.mproxy.cmp.com/', 'Array_Of_errorLog');
  RemClassRegistry.RegisterXSClass(errorLog, 'http://operations.mule.mproxy.cmp.com/', 'errorLog');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.mule.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusError, 'http://operations.mule.mproxy.cmp.com/', 'mproxyOperationStatusError');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.mule.mproxy.cmp.com/', 'mproxyOperationStatus');

end.