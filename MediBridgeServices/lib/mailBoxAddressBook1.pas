// ************************************************************************ //
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis le fichier WSDL décrit ci-dessous :
// WSDL     : http://localhost:8088/mailBoxAddressBook?wsdl
//  >Importer : http://localhost:8088/mailBoxAddressBook?wsdl>0
// Encodage : UTF-8
// Version  : 1.0
// (28/05/2013 10:08:28 - - $Rev: 56641 $)
// ************************************************************************ //

unit mailBoxAddressBook1;

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

  mproxyOperationStatusAddrBook = class;        { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  mailBoxAddressBookProperties = class;         { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatus = class;                { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  mproxyOperationStatusPerson = class;          { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  mailBoxAddressBook   = class;                 { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  person               = class;                 { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }
  mailBoxPerson        = class;                 { "http://operations.addressbook.mproxy.cmp.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://operations.addressbook.mproxy.cmp.com/"[GblSmpl] }
  mproxyOperationResult = (MPROXY_RESULT_OK, MPROXY_RESULT_FAILED);

  {$SCOPEDENUMS OFF}

  Array_Of_mailBoxAddressBook = array of mailBoxAddressBook;   { "http://operations.addressbook.mproxy.cmp.com/"[GblUbnd] }
  Array_Of_mailBoxAddressBookProperties = array of mailBoxAddressBookProperties;   { "http://operations.addressbook.mproxy.cmp.com/"[GblUbnd] }
  Array_Of_person = array of person;            { "http://operations.addressbook.mproxy.cmp.com/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : mproxyOperationStatusAddrBook, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
  // ************************************************************************ //
  mproxyOperationStatusAddrBook = class(TRemotable)
  private
    FdetailedInfo: string;
    FdetailedInfo_Specified: boolean;
    FoperationResult: mproxyOperationResult;
    FoperationResult_Specified: boolean;
    Fvalue: Array_Of_mailBoxAddressBook;
    Fvalue_Specified: boolean;
    procedure SetdetailedInfo(Index: Integer; const Astring: string);
    function  detailedInfo_Specified(Index: Integer): boolean;
    procedure SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
    function  operationResult_Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const AArray_Of_mailBoxAddressBook: Array_Of_mailBoxAddressBook);
    function  value_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property detailedInfo:    string                       Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult        Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_mailBoxAddressBook  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mailBoxAddressBookProperties, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxAddressBookProperties = class(TRemotable)
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
  // XML       : mproxyOperationStatus, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
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
  // XML       : mproxyOperationStatusPerson, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
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
    destructor Destroy; override;
  published
    property detailedInfo:    string                 Index (IS_OPTN or IS_UNQL) read FdetailedInfo write SetdetailedInfo stored detailedInfo_Specified;
    property operationResult: mproxyOperationResult  Index (IS_OPTN or IS_UNQL) read FoperationResult write SetoperationResult stored operationResult_Specified;
    property value:           Array_Of_person        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : mailBoxAddressBook, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxAddressBook = class(TRemotable)
  private
    Fid: string;
    Fid_Specified: boolean;
    FldapPersonUid: string;
    FldapPersonUid_Specified: boolean;
    Fperson: mailBoxPerson;
    Fperson_Specified: boolean;
    Fproperties: Array_Of_mailBoxAddressBookProperties;
    Fproperties_Specified: boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
    procedure SetldapPersonUid(Index: Integer; const Astring: string);
    function  ldapPersonUid_Specified(Index: Integer): boolean;
    procedure Setperson(Index: Integer; const AmailBoxPerson: mailBoxPerson);
    function  person_Specified(Index: Integer): boolean;
    procedure Setproperties(Index: Integer; const AArray_Of_mailBoxAddressBookProperties: Array_Of_mailBoxAddressBookProperties);
    function  properties_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property id:            string                                 Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property ldapPersonUid: string                                 Index (IS_OPTN or IS_UNQL) read FldapPersonUid write SetldapPersonUid stored ldapPersonUid_Specified;
    property person:        mailBoxPerson                          Index (IS_OPTN or IS_UNQL) read Fperson write Setperson stored person_Specified;
    property properties:    Array_Of_mailBoxAddressBookProperties  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fproperties write Setproperties stored properties_Specified;
  end;



  // ************************************************************************ //
  // XML       : person, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
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
  // XML       : mailBoxPerson, global, <complexType>
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
  // ************************************************************************ //
  mailBoxPerson = class(person)
  private
  published
  end;


  // ************************************************************************ //
  // Espace de nommage : http://operations.addressbook.mproxy.cmp.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // utiliser   : literal
  // Liaison : MailBoxAddressBookManagementServiceSoapBinding
  // service   : MailBoxAddressBookManagementService
  // port      : MailBoxAddressBookManagementPort
  // URL       : http://localhost:8088/mailBoxAddressBook
  // ************************************************************************ //
  MailBoxAddressBookManagement = interface(IInvokable)
  ['{13704AB8-7EF9-FE59-B854-E11C2700D956}']
    function  createFromLdapUid(const AddressBook: string): mproxyOperationStatus; stdcall;
    procedure setPort(const arg0: string); stdcall;
    function  getPort: string; stdcall;
    function  readByUidAsPerson(const uid: string): mproxyOperationStatusPerson; stdcall;
    function  update(const addrBook: mailBoxAddressBook): mproxyOperationStatus; stdcall;
    function  recreateFromLdap(const uid: string): mproxyOperationStatus; stdcall;
    function  readAllAsPerson: mproxyOperationStatusPerson; stdcall;
    function  delete(const uid: string): mproxyOperationStatus; stdcall;
    procedure setServer(const arg0: string); stdcall;
    function  readAll: mproxyOperationStatusAddrBook; stdcall;
    function  getServer: string; stdcall;
    function  readByUid(const uid: string): mproxyOperationStatusAddrBook; stdcall;
  end;

function GetMailBoxAddressBookManagement(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): MailBoxAddressBookManagement;


implementation
  uses SysUtils;

function GetMailBoxAddressBookManagement(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): MailBoxAddressBookManagement;
const
  defWSDL = 'http://localhost:8088/mailBoxAddressBook?wsdl';
  defURL  = 'http://localhost:8088/mailBoxAddressBook';
  defSvc  = 'MailBoxAddressBookManagementService';
  defPrt  = 'MailBoxAddressBookManagementPort';
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
    Result := (RIO as MailBoxAddressBookManagement);
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


destructor mproxyOperationStatusAddrBook.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fvalue)-1 do
    SysUtils.FreeAndNil(Fvalue[I]);
  System.SetLength(Fvalue, 0);
  inherited Destroy;
end;

procedure mproxyOperationStatusAddrBook.SetdetailedInfo(Index: Integer; const Astring: string);
begin
  FdetailedInfo := Astring;
  FdetailedInfo_Specified := True;
end;

function mproxyOperationStatusAddrBook.detailedInfo_Specified(Index: Integer): boolean;
begin
  Result := FdetailedInfo_Specified;
end;

procedure mproxyOperationStatusAddrBook.SetoperationResult(Index: Integer; const AmproxyOperationResult: mproxyOperationResult);
begin
  FoperationResult := AmproxyOperationResult;
  FoperationResult_Specified := True;
end;

function mproxyOperationStatusAddrBook.operationResult_Specified(Index: Integer): boolean;
begin
  Result := FoperationResult_Specified;
end;

procedure mproxyOperationStatusAddrBook.Setvalue(Index: Integer; const AArray_Of_mailBoxAddressBook: Array_Of_mailBoxAddressBook);
begin
  Fvalue := AArray_Of_mailBoxAddressBook;
  Fvalue_Specified := True;
end;

function mproxyOperationStatusAddrBook.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure mailBoxAddressBookProperties.Setid(Index: Integer; const AInteger: Integer);
begin
  Fid := AInteger;
  Fid_Specified := True;
end;

function mailBoxAddressBookProperties.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxAddressBookProperties.SetpropertyId(Index: Integer; const Astring: string);
begin
  FpropertyId := Astring;
  FpropertyId_Specified := True;
end;

function mailBoxAddressBookProperties.propertyId_Specified(Index: Integer): boolean;
begin
  Result := FpropertyId_Specified;
end;

procedure mailBoxAddressBookProperties.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function mailBoxAddressBookProperties.value_Specified(Index: Integer): boolean;
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

destructor mailBoxAddressBook.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproperties)-1 do
    SysUtils.FreeAndNil(Fproperties[I]);
  System.SetLength(Fproperties, 0);
  SysUtils.FreeAndNil(Fperson);
  inherited Destroy;
end;

procedure mailBoxAddressBook.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function mailBoxAddressBook.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mailBoxAddressBook.SetldapPersonUid(Index: Integer; const Astring: string);
begin
  FldapPersonUid := Astring;
  FldapPersonUid_Specified := True;
end;

function mailBoxAddressBook.ldapPersonUid_Specified(Index: Integer): boolean;
begin
  Result := FldapPersonUid_Specified;
end;

procedure mailBoxAddressBook.Setperson(Index: Integer; const AmailBoxPerson: mailBoxPerson);
begin
  Fperson := AmailBoxPerson;
  Fperson_Specified := True;
end;

function mailBoxAddressBook.person_Specified(Index: Integer): boolean;
begin
  Result := Fperson_Specified;
end;

procedure mailBoxAddressBook.Setproperties(Index: Integer; const AArray_Of_mailBoxAddressBookProperties: Array_Of_mailBoxAddressBookProperties);
begin
  Fproperties := AArray_Of_mailBoxAddressBookProperties;
  Fproperties_Specified := True;
end;

function mailBoxAddressBook.properties_Specified(Index: Integer): boolean;
begin
  Result := Fproperties_Specified;
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

initialization
  { MailBoxAddressBookManagement }
  InvRegistry.RegisterInterface(TypeInfo(MailBoxAddressBookManagement), 'http://operations.addressbook.mproxy.cmp.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MailBoxAddressBookManagement), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MailBoxAddressBookManagement), ioLiteral);
  { MailBoxAddressBookManagement.createFromLdapUid }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'createFromLdapUid', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.readByUidAsPerson }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'readByUidAsPerson', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.update }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'update', 'addrBook', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'update', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.recreateFromLdap }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'recreateFromLdap', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.readAllAsPerson }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'readAllAsPerson', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.delete }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'delete', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.readAll }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'readAll', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  { MailBoxAddressBookManagement.readByUid }
  InvRegistry.RegisterParamInfo(TypeInfo(MailBoxAddressBookManagement), 'readByUid', 'return', '',
                                '[Namespace="http://operations.addressbook.mproxy.cmp.com/"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mailBoxAddressBook), 'http://operations.addressbook.mproxy.cmp.com/', 'Array_Of_mailBoxAddressBook');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_mailBoxAddressBookProperties), 'http://operations.addressbook.mproxy.cmp.com/', 'Array_Of_mailBoxAddressBookProperties');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_person), 'http://operations.addressbook.mproxy.cmp.com/', 'Array_Of_person');
  RemClassRegistry.RegisterXSInfo(TypeInfo(mproxyOperationResult), 'http://operations.addressbook.mproxy.cmp.com/', 'mproxyOperationResult');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusAddrBook, 'http://operations.addressbook.mproxy.cmp.com/', 'mproxyOperationStatusAddrBook');
  RemClassRegistry.RegisterXSClass(mailBoxAddressBookProperties, 'http://operations.addressbook.mproxy.cmp.com/', 'mailBoxAddressBookProperties');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatus, 'http://operations.addressbook.mproxy.cmp.com/', 'mproxyOperationStatus');
  RemClassRegistry.RegisterXSClass(mproxyOperationStatusPerson, 'http://operations.addressbook.mproxy.cmp.com/', 'mproxyOperationStatusPerson');
  RemClassRegistry.RegisterXSClass(mailBoxAddressBook, 'http://operations.addressbook.mproxy.cmp.com/', 'mailBoxAddressBook');
  RemClassRegistry.RegisterXSClass(person, 'http://operations.addressbook.mproxy.cmp.com/', 'person');
  RemClassRegistry.RegisterXSClass(mailBoxPerson, 'http://operations.addressbook.mproxy.cmp.com/', 'mailBoxPerson');

end.