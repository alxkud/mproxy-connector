// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/certification?wsdl
//  >Importer : http://localhost:8088/certification?wsdl>0
//  >Importer : http://localhost:8088/certification?wsdl>1
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:10:57 - - $Rev: 56641 $)
// ************************************************************************ //

unit certification1;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  mproxyOperationStatus = class;                { "http://operations.ehealth.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.ehealth.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  stringArray = array of string;                { "http://jaxb.dev.java.net/array"[GblCplx] }


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
  // Liaison : CertificationServiceSoapBinding
  // service   : CertificationService
  // port      : CertificationPort
  // URL       : http://localhost:8088/certification
  // ************************************************************************ //
  Certification = interface(IInvokable)
  ['{E842F1F4-E653-F5BB-714F-57DF262A18A7}']
    function  processAuthenticationCertificateResponse(const keyLabel: string; const pinCode: string; const authenticationCertificate: string; const CAauthenticationCertificateChain: stringArray): mproxyOperationStatus; stdcall;
    function  removeCertificationData(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  importPKCS12KeyStore(const keyLabel: string; const pinCode: string; const importLocalFileFullName: string): mproxyOperationStatus; stdcall;
    function  retrieveCertificate(const keyLabel: string; const pinCode: string; const alias: string): mproxyOperationStatus; stdcall;
    function  getLastSuccessfullOperation(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  getKeyStoreRootPath: mproxyOperationStatus; stdcall;
    function  processEtkResponse(const keyLabel: string; const ETK: string): mproxyOperationStatus; stdcall;
    function  prepareEtkRequest(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  deleteKeyStore(const keyLabel: string): mproxyOperationStatus; stdcall;
    function  generateEncryptionKeys(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  verifyEtk(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  verifyEncodingCertificate(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  verifyAuthenticationCertificate(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
    function  generateAuthenticationKeys(const keyLabel: string; const pinCode: string; const arg2: Boolean): mproxyOperationStatus; stdcall;
    function  prepareAuthenticationCertificateRequest(const keyLabel: string; const pinCode: string; const idCardSignature: string; const CA: Boolean): mproxyOperationStatus; stdcall;
    function  createEmptyKeyStore(const keyLabel: string; const pinCode: string): mproxyOperationStatus; stdcall;
  end;

function GetCertification(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Certification;


implementation
  uses SysUtils;

function GetCertification(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Certification;
const
  defWSDL = 'http://localhost:8088/certification?wsdl';
  defURL  = 'http://localhost:8088/certification';
  defSvc  = 'CertificationService';
  defPrt  = 'CertificationPort';
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
    Result := (RIO as Certification);
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
  { Certification }
  InvRegistry.RegisterInterface(TypeInfo(Certification), 'http://operations.ehealth.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Certification), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(Certification), ioLiteral);
  { Certification.processAuthenticationCertificateResponse }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'processAuthenticationCertificateResponse', 'CAauthenticationCertificateChain', '',
                                '[Namespace="http://jaxb.dev.java.net/array", ArrayItemName="item"]');
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'processAuthenticationCertificateResponse', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.removeCertificationData }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'removeCertificationData', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.importPKCS12KeyStore }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'importPKCS12KeyStore', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.retrieveCertificate }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'retrieveCertificate', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.getLastSuccessfullOperation }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'getLastSuccessfullOperation', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.getKeyStoreRootPath }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'getKeyStoreRootPath', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.processEtkResponse }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'processEtkResponse', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.prepareEtkRequest }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'prepareEtkRequest', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.deleteKeyStore }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'deleteKeyStore', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.generateEncryptionKeys }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'generateEncryptionKeys', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.verifyEtk }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'verifyEtk', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.verifyEncodingCertificate }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'verifyEncodingCertificate', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.verifyAuthenticationCertificate }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'verifyAuthenticationCertificate', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.generateAuthenticationKeys }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'generateAuthenticationKeys', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.prepareAuthenticationCertificateRequest }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'prepareAuthenticationCertificateRequest', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  { Certification.createEmptyKeyStore }
  InvRegistry.RegisterParamInfo(TypeInfo(Certification), 'createEmptyKeyStore', 'return', '',
                                '[Namespace="http://operations.ehealth.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSInfo(TypeInfo(stringArray), 'http://jaxb.dev.java.net/array', 'stringArray');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.ehealth.mproxy.cmp.com/', 'mproxyOperationStatus');

end.