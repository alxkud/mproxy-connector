unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses IdCoderMIME, Account, mailBoxAccount1, certification1, Adapters,
  queueManagement;

const
  PINCODE = 'ixem';
  TEST_STRING = 'HelloMMCoreWorld...';
  SenderFirstName = 'Michael';
  SenderLastName = 'Jackson';
  ReceiverFirstName = 'Freddy';
  ReceiverLastName = 'Mercury';


var
  mmsender, mmreceiver: person;
//  private static IMMCoreServices services;

function generateMexiAddress(personfirstName, personlastName, personinami, personca: string): string;
begin
  Result := personlastName + '.' + personinami + '@' + personca;
  if personfirstName <> '' then
    Result := personfirstName + '.' + Result;
end;

procedure initializeSenderPersonalData;
begin
  mmsender := person.Create;
  with mmsender do
  begin
    firstName := SenderFirstName;
    lastName := SenderLastName;
    login := firstName + '.' + lastName;
    role := 'INDETERMINE';
    version := 'VERSION_MPROXY';
    sender := true;
    password := 'abc';
    enabled := 'true';
    userCertificate := '1';
    fax := '000';
    inami := '52454346';
    boolAck := true;
    encCertificate := '1';
    certified := true;
    caDomain := 'mproxytest';
    mexiAddress := generateMexiAddress(firstName, lastName, inami, caDomain);
  end;
end;

procedure initializeReceiverPersonalData;
begin

end;

function verifyLocalAccountExist(login: string): Boolean;
var
  operationStatusAcc: mproxyOperationStatusAccount;
begin
  operationStatusAcc := GetMailBoxAccountManagement.readById(login);
  if operationStatusAcc.operationResult = mailBoxAccount1.mproxyOperationResult.MPROXY_RESULT_OK then
    Result := True
  else
    Result := False;
end;

procedure Certify(mmperson: person);
var
  KeyLabel: String;
  certAuthS, certEncS: String;
  ops: certification1.mproxyOperationStatus;
  mosA: Adapters.mproxyOperationStatus;
begin

  KeyLabel := mmperson.login;

  ops := GetCertification.deleteKeyStore(KeyLabel);
  ops := GetCertification.createEmptyKeyStore(KeyLabel, PINCODE);

//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  ops := GetCertification.generateAuthenticationKeys(KeyLabel, PINCODE, false);
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  ops := GetCertification.prepareAuthenticationCertificateRequest(keyLabel, PINCODE, '', false);
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  mosA := GetAdaptersEndpoint.processAuthenticationCertificateRequest(keyLabel, PINCODE, ops.operationOutputValue);
//            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  ops := GetCertification.processAuthenticationCertificateResponse(keyLabel, PINCODE, mosA.operationOutputValue, GetAdaptersEndpoint.retrieveCaAuthCertChain());
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  certAuthS := ops.operationOutputValue;
  ops := GetCertification.generateEncryptionKeys(keyLabel, PINCODE);
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  ops := GetCertification.prepareEtkRequest(keyLabel, PINCODE);
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  certEncS := ops.operationOutputValue;
  mosA := GetAdaptersEndpoint.processEtkRequest(keyLabel, certAuthS, certEncS);
//            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  ops := GetCertification.processEtkResponse(keyLabel, mosA.operationOutputValue);
//            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
//            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

  mosA := GetAdaptersEndpoint.retrieveEtk(keyLabel);
//            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
//            Console.WriteLine("Etk S: " + mosA.operationOutputValue);
end;



procedure TForm1.Button1Click(Sender: TObject);
var
  operationStatusPerson: mproxyOperationStatusPerson;
  operationStatus: mailBoxAccount1.mproxyOperationStatus;
begin
  initializeSenderPersonalData;
  operationStatusPerson := GetAccountEndpoint.findAccount(mmsender.login);
  if not (operationStatusPerson.operationResult = Account.mproxyOperationResult.MPROXY_RESULT_OK) then
    ShowMessage('Cannot find account on server');

  // if local account does not exist, create local account
  if not verifyLocalAccountExist(mmsender.login) then
  begin
    operationStatus := GetMailBoxAccountManagement.createDefault(mmsender.login, mmsender.mexiAddress);

    if operationStatus.operationResult = mailBoxAccount1.mproxyOperationResult.MPROXY_RESULT_OK then
      showmessage('Local account created')
    else
      ShowMessage('Local account creation Failed');
  end;

  mmreceiver := mmsender;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  fileName: String;
  xmlStream: TStringStream;
  xmlB64: String;
  Encoder: TIdEncoderMIME;
  mos: queueManagement.mproxyOperationStatus;
begin
  fileName := 'C:\Users\Dev\Downloads\windows_8_icons_systems.png';

  try
    xmlStream := TStringStream.Create('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' +
      '<mproxyMessage xmlns:ns2="com.cmp.mproxy.message" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns2:mproxyMessage">' +
      '<version>2</version>' +
      '<receiver><uid>' + mmreceiver.login + '</uid></receiver><sender><uid>' + mmsender.login + '</uid></sender>' +
      '<attachments><attachment><uri>' + fileName + '</uri></attachment></attachments></mproxyMessage>');

    Encoder := TIdEncoderMIME.Create(nil);
    try
      xmlB64 := Encoder.Encode(xmlStream);
    finally
      Encoder.Free;
    end;
  finally
    xmlStream.Free;
  end;

  mos := GetMediMailQueueManagement.sendAsXml(mmsender.login, xmlB64);
//
//  Console.WriteLine("RESULT: " + mos.operationResult + " INFO: " + mos.detailedInfo + " OUT: " + mos.operationOutputValue);
  if mos.operationResult = queueManagement.mproxyOperationResult.MPROXY_RESULT_OK then
    ShowMessage('SENT')
  else
    ShowMessage('NOT SENT...');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  // if local account is not certified, do it
  if True then // we don't know how to check yet
  begin
    Certify(mmsender);
  end;
end;

end.
