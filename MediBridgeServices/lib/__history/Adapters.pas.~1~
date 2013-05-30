// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/services/Adapters?wsdl
//  >Importer : http://localhost:8088/services/Adapters?wsdl>0
//  >Importer : http://localhost:8088/services/Adapters?wsdl>1
// (28/05/2013 10:11:19 - - $Rev: 56641 $)
// ************************************************************************ //

unit Adapters;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]

  mproxyOperationStatus = class;                { "http://session.kernel.cmp.com/"[Lit][GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://session.kernel.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  stringArray = array of string;                { "http://jaxb.dev.java.net/array"[Lit][GblCplx] }


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
  // Liaison : AdaptersEndpointBinding
  // service   : AdaptersService
  // port      : AdaptersEndpointPort
  // URL       : http://gl-everest.lan.pcsol.be:8080/services/Adapters
  // ************************************************************************ //
  AdaptersEndpoint = interface(IInvokable)
  ['{EB5BBED9-60EF-3A24-620A-277688C6E0A5}']

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  processAuthenticationCertificateRequest(const keyLabel: string; const pinCode: string; const certificateRequest: string): mproxyOperationStatus; stdcall;

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  processEtkRequest(const keyLabel: string; const authenticationCertificate: string; const encodingCertificate: string): mproxyOperationStatus; stdcall;

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  processEtkResponse(const keyLabel: string; const ETK: string): mproxyOperationStatus; stdcall;

    // Impossible de dérouler: 
    //     - La partie sortie ne se réfère pas à un élément
    function  retrieveCaAuthCertChain: stringArray; stdcall;

    // Impossible de dérouler: 
    //     - La partie sortie ne se réfère pas à un élément
    function  retrieveCaAuthCertificate: mproxyOperationStatus; stdcall;

    // Impossible de dérouler: 
    //     - La partie entrée ne se réfère pas à un élément
    //     - La partie sortie ne se réfère pas à un élément
    function  retrieveEtk(const keyLabel: string): mproxyOperationStatus; stdcall;
  end;

function GetAdaptersEndpoint(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AdaptersEndpoint;


implementation
  uses SysUtils;

function GetAdaptersEndpoint(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AdaptersEndpoint;
const
  defWSDL = 'http://localhost:8088/services/Adapters?wsdl';
  defURL  = 'http://gl-everest.lan.pcsol.be:8080/services/Adapters';
  defSvc  = 'AdaptersService';
  defPrt  = 'AdaptersEndpointPort';
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
    Result := (RIO as AdaptersEndpoint);
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
  { AdaptersEndpoint }
  InvRegistry.RegisterInterface(TypeInfo(AdaptersEndpoint), 'http://session.kernel.cmp.com/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AdaptersEndpoint), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(AdaptersEndpoint), ioLiteral);
  { AdaptersEndpoint.processAuthenticationCertificateRequest }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'processAuthenticationCertificateRequest', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AdaptersEndpoint.processEtkRequest }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'processEtkRequest', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AdaptersEndpoint.processEtkResponse }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'processEtkResponse', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AdaptersEndpoint.retrieveCaAuthCertChain }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'retrieveCaAuthCertChain', 'return', '',
                                '[Namespace="http://jaxb.dev.java.net/array", ArrayItemName="item"]');
  { AdaptersEndpoint.retrieveCaAuthCertificate }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'retrieveCaAuthCertificate', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AdaptersEndpoint.retrieveEtk }
  InvRegistry.RegisterParamInfo(TypeInfo(AdaptersEndpoint), 'retrieveEtk', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://session.kernel.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(stringArray), 'http://jaxb.dev.java.net/array', 'stringArray');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(stringArray), [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://session.kernel.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterSerializeOptions(mproxyOperationStatus, [xoLiteralParam]);

end.