// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/services/Account?wsdl
//  >Importer : http://localhost:8088/services/Account?wsdl>0
// (27/05/2013 17:27:01 - - $Rev: 56641 $)
// ************************************************************************ //

unit Account;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Exception            = class;                 { "http://session.kernel.cmp.com/"[Flt][GblElm] }
  Exception2           = class;                 { "http://session.kernel.cmp.com/"[GblCplx] }
  person               = class;                 { "http://session.kernel.cmp.com/"[Lit][GblCplx] }
  mproxyOperationStatusPerson = class;          { "http://session.kernel.cmp.com/"[Lit][GblCplx] }
  mproxyOperationStatus = class;                { "http://session.kernel.cmp.com/"[Lit][GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://session.kernel.cmp.com/"[GblSmpl] }
  searchingCriteria = (NONE, CRITERIA_INAMI, CRITERIA_MEXI_ADDRESS, CRITERIA_UID, CRITERIA_NISS, CRITERIA_LAST_NAME, CRITERIA_FIRST_NAME);

  { "http://session.kernel.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  searchingCriteriaArray = array of searchingCriteria;   { "http://session.kernel.cmp.com/"[Lit][GblCplx] }
  Array_Of_person = array of person;            { "http://session.kernel.cmp.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Espace de nommage : http://session.kernel.cmp.com/
  // Info : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Espace de nommage : http://session.kernel.cmp.com/
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : person, global, <complexType>
  // Espace de nommage : http://session.kernel.cmp.com/
  // Serializtn : [xoLiteralParam]
  // Info : Wrapper
  // ************************************************************************ //
  person = class(TRemotable)
  private
    Fack: string;
    Fack_Specified: boolean;
    FauthCertificate: string;
    FauthCertificate_Specified: boolean;
    FautocertificationActive: string;
    FautocertificationActive_Specified: boolean;
    FboolAck: Boolean;
    FcaDomain: string;
    FcaDomain_Specified: boolean;
    Fcertified: Boolean;
    Fcity: string;
    Fcity_Specified: boolean;
    FcommercialAction: string;
    FcommercialAction_Specified: boolean;
    Fcountry: string;
    Fcountry_Specified: boolean;
    Fdescription: string;
    Fdescription_Specified: boolean;
    Fdmi: string;
    Fdmi_Specified: boolean;
    FemailForward: string;
    FemailForward_Specified: boolean;
    Fenabled: string;
    Fenabled_Specified: boolean;
    FencCertificate: string;
    FencCertificate_Specified: boolean;
    FencodingType: string;
    FencodingType_Specified: boolean;
    Fetk: string;
    Fetk_Specified: boolean;
    Ffax: string;
    Ffax_Specified: boolean;
    FfirstName: string;
    FfirstName_Specified: boolean;
    Finami: string;
    Finami_Specified: boolean;
    Finstitution: string;
    Finstitution_Specified: boolean;
    Flangue: string;
    Flangue_Specified: boolean;
    FlastName: string;
    FlastName_Specified: boolean;
    Flastconnectiondate: string;
    Flastconnectiondate_Specified: boolean;
    FlocaleStr: string;
    FlocaleStr_Specified: boolean;
    Flogin: string;
    Flogin_Specified: boolean;
    FmexiAddress: string;
    FmexiAddress_Specified: boolean;
    FmexiBackup: string;
    FmexiBackup_Specified: boolean;
    Fmobilephone: string;
    Fmobilephone_Specified: boolean;
    FoldIP: string;
    FoldIP_Specified: boolean;
    FoldSystemId: string;
    FoldSystemId_Specified: boolean;
    FpackageName: string;
    FpackageName_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fpincode: string;
    Fpincode_Specified: boolean;
    Fpkey: string;
    Fpkey_Specified: boolean;
    Fpkeyehealth: string;
    Fpkeyehealth_Specified: boolean;
    Fprincipal: Boolean;
    FprincipalUserName: string;
    FprincipalUserName_Specified: boolean;
    Fprovince: string;
    Fprovince_Specified: boolean;
    FregistrationDate: string;
    FregistrationDate_Specified: boolean;
    Frole: string;
    Frole_Specified: boolean;
    Fsender: Boolean;
    FsenderInvisible: Boolean;
    Fsubscriptiondocs: string;
    Fsubscriptiondocs_Specified: boolean;
    Ftelephone: string;
    Ftelephone_Specified: boolean;
    Fupgraded: string;
    Fupgraded_Specified: boolean;
    FuserCertificate: string;
    FuserCertificate_Specified: boolean;
    Fuserpublic: string;
    Fuserpublic_Specified: boolean;
    Fusetranscodor: string;
    Fusetranscodor_Specified: boolean;
    Fversion: string;
    Fversion_Specified: boolean;
    procedure Setack(Index: Integer; const Astring: string);
    function  ack_Specified(Index: Integer): boolean;
    procedure SetauthCertificate(Index: Integer; const Astring: string);
    function  authCertificate_Specified(Index: Integer): boolean;
    procedure SetautocertificationActive(Index: Integer; const Astring: string);
    function  autocertificationActive_Specified(Index: Integer): boolean;
    procedure SetcaDomain(Index: Integer; const Astring: string);
    function  caDomain_Specified(Index: Integer): boolean;
    procedure Setcity(Index: Integer; const Astring: string);
    function  city_Specified(Index: Integer): boolean;
    procedure SetcommercialAction(Index: Integer; const Astring: string);
    function  commercialAction_Specified(Index: Integer): boolean;
    procedure Setcountry(Index: Integer; const Astring: string);
    function  country_Specified(Index: Integer): boolean;
    procedure Setdescription(Index: Integer; const Astring: string);
    function  description_Specified(Index: Integer): boolean;
    procedure Setdmi(Index: Integer; const Astring: string);
    function  dmi_Specified(Index: Integer): boolean;
    procedure SetemailForward(Index: Integer; const Astring: string);
    function  emailForward_Specified(Index: Integer): boolean;
    procedure Setenabled(Index: Integer; const Astring: string);
    function  enabled_Specified(Index: Integer): boolean;
    procedure SetencCertificate(Index: Integer; const Astring: string);
    function  encCertificate_Specified(Index: Integer): boolean;
    procedure SetencodingType(Index: Integer; const Astring: string);
    function  encodingType_Specified(Index: Integer): boolean;
    procedure Setetk(Index: Integer; const Astring: string);
    function  etk_Specified(Index: Integer): boolean;
    procedure Setfax(Index: Integer; const Astring: string);
    function  fax_Specified(Index: Integer): boolean;
    procedure SetfirstName(Index: Integer; const Astring: string);
    function  firstName_Specified(Index: Integer): boolean;
    procedure Setinami(Index: Integer; const Astring: string);
    function  inami_Specified(Index: Integer): boolean;
    procedure Setinstitution(Index: Integer; const Astring: string);
    function  institution_Specified(Index: Integer): boolean;
    procedure Setlangue(Index: Integer; const Astring: string);
    function  langue_Specified(Index: Integer): boolean;
    procedure SetlastName(Index: Integer; const Astring: string);
    function  lastName_Specified(Index: Integer): boolean;
    procedure Setlastconnectiondate(Index: Integer; const Astring: string);
    function  lastconnectiondate_Specified(Index: Integer): boolean;
    procedure SetlocaleStr(Index: Integer; const Astring: string);
    function  localeStr_Specified(Index: Integer): boolean;
    procedure Setlogin(Index: Integer; const Astring: string);
    function  login_Specified(Index: Integer): boolean;
    procedure SetmexiAddress(Index: Integer; const Astring: string);
    function  mexiAddress_Specified(Index: Integer): boolean;
    procedure SetmexiBackup(Index: Integer; const Astring: string);
    function  mexiBackup_Specified(Index: Integer): boolean;
    procedure Setmobilephone(Index: Integer; const Astring: string);
    function  mobilephone_Specified(Index: Integer): boolean;
    procedure SetoldIP(Index: Integer; const Astring: string);
    function  oldIP_Specified(Index: Integer): boolean;
    procedure SetoldSystemId(Index: Integer; const Astring: string);
    function  oldSystemId_Specified(Index: Integer): boolean;
    procedure SetpackageName(Index: Integer; const Astring: string);
    function  packageName_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setpincode(Index: Integer; const Astring: string);
    function  pincode_Specified(Index: Integer): boolean;
    procedure Setpkey(Index: Integer; const Astring: string);
    function  pkey_Specified(Index: Integer): boolean;
    procedure Setpkeyehealth(Index: Integer; const Astring: string);
    function  pkeyehealth_Specified(Index: Integer): boolean;
    procedure SetprincipalUserName(Index: Integer; const Astring: string);
    function  principalUserName_Specified(Index: Integer): boolean;
    procedure Setprovince(Index: Integer; const Astring: string);
    function  province_Specified(Index: Integer): boolean;
    procedure SetregistrationDate(Index: Integer; const Astring: string);
    function  registrationDate_Specified(Index: Integer): boolean;
    procedure Setrole(Index: Integer; const Astring: string);
    function  role_Specified(Index: Integer): boolean;
    procedure Setsubscriptiondocs(Index: Integer; const Astring: string);
    function  subscriptiondocs_Specified(Index: Integer): boolean;
    procedure Settelephone(Index: Integer; const Astring: string);
    function  telephone_Specified(Index: Integer): boolean;
    procedure Setupgraded(Index: Integer; const Astring: string);
    function  upgraded_Specified(Index: Integer): boolean;
    procedure SetuserCertificate(Index: Integer; const Astring: string);
    function  userCertificate_Specified(Index: Integer): boolean;
    procedure Setuserpublic(Index: Integer; const Astring: string);
    function  userpublic_Specified(Index: Integer): boolean;
    procedure Setusetranscodor(Index: Integer; const Astring: string);
    function  usetranscodor_Specified(Index: Integer): boolean;
    procedure Setversion(Index: Integer; const Astring: string);
    function  version_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property ack:                     string   Index (IS_OPTN or IS_UNQL) read Fack write Setack stored ack_Specified;
    property authCertificate:         string   Index (IS_OPTN or IS_UNQL) read FauthCertificate write SetauthCertificate stored authCertificate_Specified;
    property autocertificationActive: string   Index (IS_OPTN or IS_UNQL) read FautocertificationActive write SetautocertificationActive stored autocertificationActive_Specified;
    property boolAck:                 Boolean  Index (IS_UNQL) read FboolAck write FboolAck;
    property caDomain:                string   Index (IS_OPTN or IS_UNQL) read FcaDomain write SetcaDomain stored caDomain_Specified;
    property certified:               Boolean  Index (IS_UNQL) read Fcertified write Fcertified;
    property city:                    string   Index (IS_OPTN or IS_UNQL) read Fcity write Setcity stored city_Specified;
    property commercialAction:        string   Index (IS_OPTN or IS_UNQL) read FcommercialAction write SetcommercialAction stored commercialAction_Specified;
    property country:                 string   Index (IS_OPTN or IS_UNQL) read Fcountry write Setcountry stored country_Specified;
    property description:             string   Index (IS_OPTN or IS_UNQL) read Fdescription write Setdescription stored description_Specified;
    property dmi:                     string   Index (IS_OPTN or IS_UNQL) read Fdmi write Setdmi stored dmi_Specified;
    property emailForward:            string   Index (IS_OPTN or IS_UNQL) read FemailForward write SetemailForward stored emailForward_Specified;
    property enabled:                 string   Index (IS_OPTN or IS_UNQL) read Fenabled write Setenabled stored enabled_Specified;
    property encCertificate:          string   Index (IS_OPTN or IS_UNQL) read FencCertificate write SetencCertificate stored encCertificate_Specified;
    property encodingType:            string   Index (IS_OPTN or IS_UNQL) read FencodingType write SetencodingType stored encodingType_Specified;
    property etk:                     string   Index (IS_OPTN or IS_UNQL) read Fetk write Setetk stored etk_Specified;
    property fax:                     string   Index (IS_OPTN or IS_UNQL) read Ffax write Setfax stored fax_Specified;
    property firstName:               string   Index (IS_OPTN or IS_UNQL) read FfirstName write SetfirstName stored firstName_Specified;
    property inami:                   string   Index (IS_OPTN or IS_UNQL) read Finami write Setinami stored inami_Specified;
    property institution:             string   Index (IS_OPTN or IS_UNQL) read Finstitution write Setinstitution stored institution_Specified;
    property langue:                  string   Index (IS_OPTN or IS_UNQL) read Flangue write Setlangue stored langue_Specified;
    property lastName:                string   Index (IS_OPTN or IS_UNQL) read FlastName write SetlastName stored lastName_Specified;
    property lastconnectiondate:      string   Index (IS_OPTN or IS_UNQL) read Flastconnectiondate write Setlastconnectiondate stored lastconnectiondate_Specified;
    property localeStr:               string   Index (IS_OPTN or IS_UNQL) read FlocaleStr write SetlocaleStr stored localeStr_Specified;
    property login:                   string   Index (IS_OPTN or IS_UNQL) read Flogin write Setlogin stored login_Specified;
    property mexiAddress:             string   Index (IS_OPTN or IS_UNQL) read FmexiAddress write SetmexiAddress stored mexiAddress_Specified;
    property mexiBackup:              string   Index (IS_OPTN or IS_UNQL) read FmexiBackup write SetmexiBackup stored mexiBackup_Specified;
    property mobilephone:             string   Index (IS_OPTN or IS_UNQL) read Fmobilephone write Setmobilephone stored mobilephone_Specified;
    property oldIP:                   string   Index (IS_OPTN or IS_UNQL) read FoldIP write SetoldIP stored oldIP_Specified;
    property oldSystemId:             string   Index (IS_OPTN or IS_UNQL) read FoldSystemId write SetoldSystemId stored oldSystemId_Specified;
    property packageName:             string   Index (IS_OPTN or IS_UNQL) read FpackageName write SetpackageName stored packageName_Specified;
    property password:                string   Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property pincode:                 string   Index (IS_OPTN or IS_UNQL) read Fpincode write Setpincode stored pincode_Specified;
    property pkey:                    string   Index (IS_OPTN or IS_UNQL) read Fpkey write Setpkey stored pkey_Specified;
    property pkeyehealth:             string   Index (IS_OPTN or IS_UNQL) read Fpkeyehealth write Setpkeyehealth stored pkeyehealth_Specified;
    property principal:               Boolean  Index (IS_UNQL) read Fprincipal write Fprincipal;
    property principalUserName:       string   Index (IS_OPTN or IS_UNQL) read FprincipalUserName write SetprincipalUserName stored principalUserName_Specified;
    property province:                string   Index (IS_OPTN or IS_UNQL) read Fprovince write Setprovince stored province_Specified;
    property registrationDate:        string   Index (IS_OPTN or IS_UNQL) read FregistrationDate write SetregistrationDate stored registrationDate_Specified;
    property role:                    string   Index (IS_OPTN or IS_UNQL) read Frole write Setrole stored role_Specified;
    property sender:                  Boolean  Index (IS_UNQL) read Fsender write Fsender;
    property senderInvisible:         Boolean  Index (IS_UNQL) read FsenderInvisible write FsenderInvisible;
    property subscriptiondocs:        string   Index (IS_OPTN or IS_UNQL) read Fsubscriptiondocs write Setsubscriptiondocs stored subscriptiondocs_Specified;
    property telephone:               string   Index (IS_OPTN or IS_UNQL) read Ftelephone write Settelephone stored telephone_Specified;
    property upgraded:                string   Index (IS_OPTN or IS_UNQL) read Fupgraded write Setupgraded stored upgraded_Specified;
    property userCertificate:         string   Index (IS_OPTN or IS_UNQL) read FuserCertificate write SetuserCertificate stored userCertificate_Specified;
    property userpublic:              string   Index (IS_OPTN or IS_UNQL) read Fuserpublic write Setuserpublic stored userpublic_Specified;
    property usetranscodor:           string   Index (IS_OPTN or IS_UNQL) read Fusetranscodor write Setusetranscodor stored usetranscodor_Specified;
    property version:                 string   Index (IS_OPTN or IS_UNQL) read Fversion write Setversion stored version_Specified;
  end;



  // ************************************************************************ //
  // XML       : mproxyOperationStatusPerson, global, <complexType>
  // Espace de nommage : http://session.kernel.cmp.com/
  // Serializtn : [xoLiteralParam]
  // Info : Wrapper
  // ************************************************************************ //
  mproxyOperationStatusPerson = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_person;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_person: Array_Of_person);
    function  value_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property detailedInfo:    string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_person        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



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
  // Liaison : AccountEndpointBinding
  // service   : AccountService
  // port      : AccountEndpointPort
  // URL       : http://gl-everest.lan.pcsol.be:8080/services/Account
  // ************************************************************************ //
  AccountEndpoint = interface(IInvokable)
  ['{62A58B6E-D39E-F2FB-F465-8CE155599FD7}']

    // Impossible de dérouler: 
    //     - La partie entrée ne se réfère pas à un élément
    //     - La partie sortie ne se réfère pas à un élément
    function  createAccountWS(const person: person): mproxyOperationStatus; stdcall;

    // Impossible de dérouler: 
    //     - La partie entrée ne se réfère pas à un élément
    //     - La partie sortie ne se réfère pas à un élément
    function  findAccount(const userId: string): mproxyOperationStatusPerson; stdcall;

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  findAccountByCriteria(const criteriaId: string; const pattern: string; const maximumRecords: Int64): mproxyOperationStatusPerson; stdcall;

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  findAccountByLdapSearch(const ldapSearchClause: string; const maximumRecords: Int64): mproxyOperationStatusPerson; stdcall;

    // Impossible de dérouler: 
    //     - Le message entrant comporte plusieurs parties
    //     - La partie sortie ne se réfère pas à un élément
    function  findByLoginOnDocsWS(const server: string; const login: string): mproxyOperationStatusPerson; stdcall;

    // Impossible de dérouler: 
    //     - La partie sortie ne se réfère pas à un élément
    function  getCriteriaNamesList: searchingCriteriaArray; stdcall;

    // Impossible de dérouler: 
    //     - La partie entrée ne se réfère pas à un élément
    procedure removeAccount(const arg0: string); stdcall;
  end;

function GetAccountEndpoint(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AccountEndpoint;


implementation
  uses SysUtils;

function GetAccountEndpoint(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AccountEndpoint;
const
  defWSDL = 'http://localhost:8088/services/Account?wsdl';
  defURL  = 'http://gl-everest.lan.pcsol.be:8080/services/Account';
  defSvc  = 'AccountService';
  defPrt  = 'AccountEndpointPort';
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
    Result := (RIO as AccountEndpoint);
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


procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

constructor person.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure person.Setack(Index: Integer; const Astring: string);
begin
  Fack := Astring;
  Fack_Specified := True;
end;

function person.ack_Specified(Index: Integer): boolean;
begin
  Result := Fack_Specified;
end;

procedure person.SetauthCertificate(Index: Integer; const Astring: string);
begin
  FauthCertificate := Astring;
  FauthCertificate_Specified := True;
end;

function person.authCertificate_Specified(Index: Integer): boolean;
begin
  Result := FauthCertificate_Specified;
end;

procedure person.SetautocertificationActive(Index: Integer; const Astring: string);
begin
  FautocertificationActive := Astring;
  FautocertificationActive_Specified := True;
end;

function person.autocertificationActive_Specified(Index: Integer): boolean;
begin
  Result := FautocertificationActive_Specified;
end;

procedure person.SetcaDomain(Index: Integer; const Astring: string);
begin
  FcaDomain := Astring;
  FcaDomain_Specified := True;
end;

function person.caDomain_Specified(Index: Integer): boolean;
begin
  Result := FcaDomain_Specified;
end;

procedure person.Setcity(Index: Integer; const Astring: string);
begin
  Fcity := Astring;
  Fcity_Specified := True;
end;

function person.city_Specified(Index: Integer): boolean;
begin
  Result := Fcity_Specified;
end;

procedure person.SetcommercialAction(Index: Integer; const Astring: string);
begin
  FcommercialAction := Astring;
  FcommercialAction_Specified := True;
end;

function person.commercialAction_Specified(Index: Integer): boolean;
begin
  Result := FcommercialAction_Specified;
end;

procedure person.Setcountry(Index: Integer; const Astring: string);
begin
  Fcountry := Astring;
  Fcountry_Specified := True;
end;

function person.country_Specified(Index: Integer): boolean;
begin
  Result := Fcountry_Specified;
end;

procedure person.Setdescription(Index: Integer; const Astring: string);
begin
  Fdescription := Astring;
  Fdescription_Specified := True;
end;

function person.description_Specified(Index: Integer): boolean;
begin
  Result := Fdescription_Specified;
end;

procedure person.Setdmi(Index: Integer; const Astring: string);
begin
  Fdmi := Astring;
  Fdmi_Specified := True;
end;

function person.dmi_Specified(Index: Integer): boolean;
begin
  Result := Fdmi_Specified;
end;

procedure person.SetemailForward(Index: Integer; const Astring: string);
begin
  FemailForward := Astring;
  FemailForward_Specified := True;
end;

function person.emailForward_Specified(Index: Integer): boolean;
begin
  Result := FemailForward_Specified;
end;

procedure person.Setenabled(Index: Integer; const Astring: string);
begin
  Fenabled := Astring;
  Fenabled_Specified := True;
end;

function person.enabled_Specified(Index: Integer): boolean;
begin
  Result := Fenabled_Specified;
end;

procedure person.SetencCertificate(Index: Integer; const Astring: string);
begin
  FencCertificate := Astring;
  FencCertificate_Specified := True;
end;

function person.encCertificate_Specified(Index: Integer): boolean;
begin
  Result := FencCertificate_Specified;
end;

procedure person.SetencodingType(Index: Integer; const Astring: string);
begin
  FencodingType := Astring;
  FencodingType_Specified := True;
end;

function person.encodingType_Specified(Index: Integer): boolean;
begin
  Result := FencodingType_Specified;
end;

procedure person.Setetk(Index: Integer; const Astring: string);
begin
  Fetk := Astring;
  Fetk_Specified := True;
end;

function person.etk_Specified(Index: Integer): boolean;
begin
  Result := Fetk_Specified;
end;

procedure person.Setfax(Index: Integer; const Astring: string);
begin
  Ffax := Astring;
  Ffax_Specified := True;
end;

function person.fax_Specified(Index: Integer): boolean;
begin
  Result := Ffax_Specified;
end;

procedure person.SetfirstName(Index: Integer; const Astring: string);
begin
  FfirstName := Astring;
  FfirstName_Specified := True;
end;

function person.firstName_Specified(Index: Integer): boolean;
begin
  Result := FfirstName_Specified;
end;

procedure person.Setinami(Index: Integer; const Astring: string);
begin
  Finami := Astring;
  Finami_Specified := True;
end;

function person.inami_Specified(Index: Integer): boolean;
begin
  Result := Finami_Specified;
end;

procedure person.Setinstitution(Index: Integer; const Astring: string);
begin
  Finstitution := Astring;
  Finstitution_Specified := True;
end;

function person.institution_Specified(Index: Integer): boolean;
begin
  Result := Finstitution_Specified;
end;

procedure person.Setlangue(Index: Integer; const Astring: string);
begin
  Flangue := Astring;
  Flangue_Specified := True;
end;

function person.langue_Specified(Index: Integer): boolean;
begin
  Result := Flangue_Specified;
end;

procedure person.SetlastName(Index: Integer; const Astring: string);
begin
  FlastName := Astring;
  FlastName_Specified := True;
end;

function person.lastName_Specified(Index: Integer): boolean;
begin
  Result := FlastName_Specified;
end;

procedure person.Setlastconnectiondate(Index: Integer; const Astring: string);
begin
  Flastconnectiondate := Astring;
  Flastconnectiondate_Specified := True;
end;

function person.lastconnectiondate_Specified(Index: Integer): boolean;
begin
  Result := Flastconnectiondate_Specified;
end;

procedure person.SetlocaleStr(Index: Integer; const Astring: string);
begin
  FlocaleStr := Astring;
  FlocaleStr_Specified := True;
end;

function person.localeStr_Specified(Index: Integer): boolean;
begin
  Result := FlocaleStr_Specified;
end;

procedure person.Setlogin(Index: Integer; const Astring: string);
begin
  Flogin := Astring;
  Flogin_Specified := True;
end;

function person.login_Specified(Index: Integer): boolean;
begin
  Result := Flogin_Specified;
end;

procedure person.SetmexiAddress(Index: Integer; const Astring: string);
begin
  FmexiAddress := Astring;
  FmexiAddress_Specified := True;
end;

function person.mexiAddress_Specified(Index: Integer): boolean;
begin
  Result := FmexiAddress_Specified;
end;

procedure person.SetmexiBackup(Index: Integer; const Astring: string);
begin
  FmexiBackup := Astring;
  FmexiBackup_Specified := True;
end;

function person.mexiBackup_Specified(Index: Integer): boolean;
begin
  Result := FmexiBackup_Specified;
end;

procedure person.Setmobilephone(Index: Integer; const Astring: string);
begin
  Fmobilephone := Astring;
  Fmobilephone_Specified := True;
end;

function person.mobilephone_Specified(Index: Integer): boolean;
begin
  Result := Fmobilephone_Specified;
end;

procedure person.SetoldIP(Index: Integer; const Astring: string);
begin
  FoldIP := Astring;
  FoldIP_Specified := True;
end;

function person.oldIP_Specified(Index: Integer): boolean;
begin
  Result := FoldIP_Specified;
end;

procedure person.SetoldSystemId(Index: Integer; const Astring: string);
begin
  FoldSystemId := Astring;
  FoldSystemId_Specified := True;
end;

function person.oldSystemId_Specified(Index: Integer): boolean;
begin
  Result := FoldSystemId_Specified;
end;

procedure person.SetpackageName(Index: Integer; const Astring: string);
begin
  FpackageName := Astring;
  FpackageName_Specified := True;
end;

function person.packageName_Specified(Index: Integer): boolean;
begin
  Result := FpackageName_Specified;
end;

procedure person.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function person.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure person.Setpincode(Index: Integer; const Astring: string);
begin
  Fpincode := Astring;
  Fpincode_Specified := True;
end;

function person.pincode_Specified(Index: Integer): boolean;
begin
  Result := Fpincode_Specified;
end;

procedure person.Setpkey(Index: Integer; const Astring: string);
begin
  Fpkey := Astring;
  Fpkey_Specified := True;
end;

function person.pkey_Specified(Index: Integer): boolean;
begin
  Result := Fpkey_Specified;
end;

procedure person.Setpkeyehealth(Index: Integer; const Astring: string);
begin
  Fpkeyehealth := Astring;
  Fpkeyehealth_Specified := True;
end;

function person.pkeyehealth_Specified(Index: Integer): boolean;
begin
  Result := Fpkeyehealth_Specified;
end;

procedure person.SetprincipalUserName(Index: Integer; const Astring: string);
begin
  FprincipalUserName := Astring;
  FprincipalUserName_Specified := True;
end;

function person.principalUserName_Specified(Index: Integer): boolean;
begin
  Result := FprincipalUserName_Specified;
end;

procedure person.Setprovince(Index: Integer; const Astring: string);
begin
  Fprovince := Astring;
  Fprovince_Specified := True;
end;

function person.province_Specified(Index: Integer): boolean;
begin
  Result := Fprovince_Specified;
end;

procedure person.SetregistrationDate(Index: Integer; const Astring: string);
begin
  FregistrationDate := Astring;
  FregistrationDate_Specified := True;
end;

function person.registrationDate_Specified(Index: Integer): boolean;
begin
  Result := FregistrationDate_Specified;
end;

procedure person.Setrole(Index: Integer; const Astring: string);
begin
  Frole := Astring;
  Frole_Specified := True;
end;

function person.role_Specified(Index: Integer): boolean;
begin
  Result := Frole_Specified;
end;

procedure person.Setsubscriptiondocs(Index: Integer; const Astring: string);
begin
  Fsubscriptiondocs := Astring;
  Fsubscriptiondocs_Specified := True;
end;

function person.subscriptiondocs_Specified(Index: Integer): boolean;
begin
  Result := Fsubscriptiondocs_Specified;
end;

procedure person.Settelephone(Index: Integer; const Astring: string);
begin
  Ftelephone := Astring;
  Ftelephone_Specified := True;
end;

function person.telephone_Specified(Index: Integer): boolean;
begin
  Result := Ftelephone_Specified;
end;

procedure person.Setupgraded(Index: Integer; const Astring: string);
begin
  Fupgraded := Astring;
  Fupgraded_Specified := True;
end;

function person.upgraded_Specified(Index: Integer): boolean;
begin
  Result := Fupgraded_Specified;
end;

procedure person.SetuserCertificate(Index: Integer; const Astring: string);
begin
  FuserCertificate := Astring;
  FuserCertificate_Specified := True;
end;

function person.userCertificate_Specified(Index: Integer): boolean;
begin
  Result := FuserCertificate_Specified;
end;

procedure person.Setuserpublic(Index: Integer; const Astring: string);
begin
  Fuserpublic := Astring;
  Fuserpublic_Specified := True;
end;

function person.userpublic_Specified(Index: Integer): boolean;
begin
  Result := Fuserpublic_Specified;
end;

procedure person.Setusetranscodor(Index: Integer; const Astring: string);
begin
  Fusetranscodor := Astring;
  Fusetranscodor_Specified := True;
end;

function person.usetranscodor_Specified(Index: Integer): boolean;
begin
  Result := Fusetranscodor_Specified;
end;

procedure person.Setversion(Index: Integer; const Astring: string);
begin
  Fversion := Astring;
  Fversion_Specified := True;
end;

function person.version_Specified(Index: Integer): boolean;
begin
  Result := Fversion_Specified;
end;

constructor mproxyOperationStatusPerson.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor mproxyOperationStatusPerson.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusPerson.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusPerson.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusPerson.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusPerson.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusPerson.Setvalue(Index: Integer; const AArray_Of_person: Array_Of_person);
begin
  Fvalue := AArray_Of_person;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusPerson.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
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
  { AccountEndpoint }
  InvRegistry.RegisterInterface(TypeInfo(AccountEndpoint), 'http://session.kernel.cmp.com/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AccountEndpoint), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(AccountEndpoint), ioLiteral);
  { AccountEndpoint.createAccountWS }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'createAccountWS', 'person', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'createAccountWS', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AccountEndpoint.findAccount }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'findAccount', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AccountEndpoint.findAccountByCriteria }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'findAccountByCriteria', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AccountEndpoint.findAccountByLdapSearch }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'findAccountByLdapSearch', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AccountEndpoint.findByLoginOnDocsWS }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'findByLoginOnDocsWS', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/"]');
  { AccountEndpoint.getCriteriaNamesList }
  InvRegistry.RegisterParamInfo(TypeInfo(AccountEndpoint), 'getCriteriaNamesList', 'return', '',
                                '[Namespace="http://session.kernel.cmp.com/", ArrayItemName="item"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchingCriteria), 'http://session.kernel.cmp.com/', 'searchingCriteria');
  RemClassRegistry.RegisterXSInfo(TypeInfo(searchingCriteriaArray), 'http://session.kernel.cmp.com/', 'searchingCriteriaArray');
  RemClassRegistry.RegisterSerializeOptions(TypeInfo(searchingCriteriaArray), [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_person), 'http://session.kernel.cmp.com/', 'Array_Of_person');
  RemClassRegistry.RegisterXSClass(Exception, 'http://session.kernel.cmp.com/', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://session.kernel.cmp.com/', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(person, 'http://session.kernel.cmp.com/', 'person');
  RemClassRegistry.RegisterSerializeOptions(person, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://session.kernel.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusPerson, 'http://session.kernel.cmp.com/', 'mproxyOperationStatusPerson');
  RemClassRegistry.RegisterSerializeOptions(mproxyOperationStatusPerson, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://session.kernel.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterSerializeOptions(mproxyOperationStatus, [xoLiteralParam]);

end.