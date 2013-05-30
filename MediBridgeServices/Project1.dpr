program Project1;

uses
  FMX.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Account in 'lib\Account.pas',
  Adapters in 'lib\Adapters.pas',
  certification1 in 'lib\certification1.pas',
  createMproxyAccount in 'lib\createMproxyAccount.pas',
  decoding1 in 'lib\decoding1.pas',
  diagnostics in 'lib\diagnostics.pas',
  encoding1 in 'lib\encoding1.pas',
  EtkDepotAdapter in 'lib\EtkDepotAdapter.pas',
  mailBoxAccount1 in 'lib\mailBoxAccount1.pas',
  mailBoxAddressBook1 in 'lib\mailBoxAddressBook1.pas',
  queueManagement in 'lib\queueManagement.pas',
  CommonDefinitions in 'CommonDefinitions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
