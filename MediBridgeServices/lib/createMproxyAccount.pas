// ************************************************************************ //
// Les types d�clar�s dans ce fichier ont �t� g�n�r�s � partir de donn�es lues
// depuis le fichier WSDL d�crit ci-dessous :
// WSDL     : http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount?wsdl
//  >Importer : http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount?wsdl>0
// (27/05/2013 17:32:33 - - $Rev: 56641 $)
// ************************************************************************ //

unit createMproxyAccount;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, SOAPHTTPTrans;

const
  IS_OPTN = $0001;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // Les types suivants mentionn�s dans le document WSDL ne sont pas repr�sent�s
  // dans ce fichier. Ce sont des alias[@] d'autres types repr�sent�s ou alors ils �taient r�f�renc�s
  // mais jamais[!] d�clar�s dans le document. Les types de la derni�re cat�gorie
  // sont en principe mapp�s sur des types Embarcadero ou XML pr�d�finis/connus. Toutefois, ils peuvent aussi 
  // signaler des documents WSDL incorrects n'ayant pas r�ussi � d�clarer ou importer un type de sch�ma.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]


  {$SCOPEDENUMS ON}
  { "http://session.kernel.mexi.com/"[GblSmpl] }
  dmi = (
      AZIS, 
      EPICURE, 
      HEALTH_ONE, 
      HIPPOCRATE, 
      MBSCRIPT, 
      MEDAR, 
      MEDIBASE, 
      MEDIBIT, 
      MEDICARD, 
      MEDICIS, 
      MEDIDOC_CLINIDOC, 
      MEDIDOC_DOS_SYSTEMS, 
      MEDIGEST, 
      MEDISOFT, 
      MEDUS, 
      MEPAS, 
      OMNIWIN, 
      PRAKTIS, 
      PRO_DOC, 
      PROGYN, 
      QUADRAT, 
      SOCRATE, 
      SOSOEME, 
      WERKAMED, 
      WINDOC
  );

  {$SCOPEDENUMS OFF}


  // ************************************************************************ //
  // Espace de nommage : http://session.kernel.mexi.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // utiliser   : literal
  // Liaison : MproxyAccountsServiceEndpointBinding
  // service   : MproxyAccountsService
  // port      : MproxyAccountsServiceEndpointPort
  // URL       : http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount
  // ************************************************************************ //
  MproxyAccountsServiceEndpoint = interface(IInvokable)
  ['{D6D0D58F-BD4E-2CDC-4E2B-AECC187838C4}']
    function  createAccount(const firstname: string; const lastname: string; const login: string; const password: string; const inami: string; const niss: string; 
                            const email: string; const telephone: string; const mobilePhone: string; const fax: string; const address: string; 
                            const postalCode: string; const city: string; const language: string; const dmi: dmi): string; stdcall;
  end;

function GetMproxyAccountsServiceEndpoint(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): MproxyAccountsServiceEndpoint;


implementation
  uses SysUtils;

function GetMproxyAccountsServiceEndpoint(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): MproxyAccountsServiceEndpoint;
const
  defWSDL = 'http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount?wsdl';
  defURL  = 'http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount';
  defSvc  = 'MproxyAccountsService';
  defPrt  = 'MproxyAccountsServiceEndpointPort';
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
    Result := (RIO as MproxyAccountsServiceEndpoint);
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


initialization
  { MproxyAccountsServiceEndpoint }
  InvRegistry.RegisterInterface(TypeInfo(MproxyAccountsServiceEndpoint), 'http://session.kernel.mexi.com/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MproxyAccountsServiceEndpoint), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MproxyAccountsServiceEndpoint), ioDocument);
  { MproxyAccountsServiceEndpoint.createAccount }
  InvRegistry.RegisterMethodInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'firstname', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'lastname', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'login', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'password', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'inami', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'niss', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'email', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'telephone', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'mobilePhone', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'fax', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'address', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'postalCode', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'city', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'language', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'dmi', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MproxyAccountsServiceEndpoint), 'createAccount', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(dmi), 'http://session.kernel.mexi.com/', 'dmi');

end.