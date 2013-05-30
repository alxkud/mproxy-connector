// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/services/EtkDepotAdapter?wsdl
//  >Importer : http://localhost:8088/services/EtkDepotAdapter?wsdl>0
// (28/05/2013 10:12:02 - - $Rev: 56641 $)
// ************************************************************************ //

unit EtkDepotAdapter;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // Les types suivants mentionnés dans le document WSDL ne sont pas représentés
  // dans ce fichier. Ce sont des alias[@] d'autres types représentés ou alors ils étaient référencés
  // mais jamais[!] déclarés dans le document. Les types de la dernière catégorie
  // sont en principe mappés sur des types Embarcadero ou XML prédéfinis/connus. Toutefois, ils peuvent aussi 
  // signaler des documents WSDL incorrects n'ayant pas réussi à déclarer ou importer un type de schéma.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]

  mproxyOperationStatus = class;                { "http://session.kernel.cmp.com/"[Lit][GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://session.kernel.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://session.kernel.cmp.com/
  // Serializtn : [xoLiteralParam]
  // Info : Wrapper
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
  public
    constructor Create; override;
  published
    property detailedInfo:         string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationOutputValue: string                 Index (IS_OPTN or IS_UNQL) read FoperationOutputValue write SetoperationOutputValue stored operationOutputValue_Specified;
    property operationResult:      mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
  end;


  // ************************************************************************ //
  // Espace de nommage : http://session.kernel.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : EtkDepotAdapterEndpointBinding
  // service   : EtkDepotAdapterService
  // port      : EtkDepotAdapterEndpointPort
  // URL       : http://gl-everest.lan.pcsol.be:8080/services/EtkDepotAdapter
  // ************************************************************************ //
  EtkDepotAdapterEndpoint = interface(IInvokable)
  ['{E18EBA18-84ED-AD56-3153-B7CF17D3EC2C}']

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  getEtk(const Type_: string; const Value: string; const ApplicationID: string): mproxyOperationStatus; stdcall;
  end;

function GetEtkDepotAdapterEndpoint(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EtkDepotAdapterEndpoint;


implementation
  uses SysUtils;

function GetEtkDepotAdapterEndpoint(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EtkDepotAdapterEndpoint;
const
  defWSDL = 'http://localhost:8088/services/EtkDepotAdapter?wsdl';
  defURL  = 'http://gl-everest.lan.pcsol.be:8080/services/EtkDepotAdapter';
  defSvc  = 'EtkDepotAdapterService';
  defPrt  = 'EtkDepotAdapterEndpointPort';
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
    Result := (RIO as EtkDepotAdapterEndpoint);
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


constructor mproxyOperationStatus.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
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
  { EtkDepotAdapterEndpoint }
  InvRegistry.RegisterInterface(TypeInfo(EtkDepotAdapterEndpoint), 'http://session.kernel.cmp.com/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EtkDepotAdapterEndpoint), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(EtkDepotAdapterEndpoint), ioLiteral);
  { EtkDepotAdapterEndpoint.getEtk }
  InvRegistry.RegisterParamInfo(TypeInfo(EtkDepotAdapterEndpoint), 'getEtk', 'Type_', 'Type', '');
  InvRegistry.RegisterParamInfo(TypeInfo(EtkDepotAdapterEndpoint), 'getEtk', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://session.kernel.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://session.kernel.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterSerializeOptions(mproxyOperationStatus, [xoLiteralParam]);

end.