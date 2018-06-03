program CodeGenerator;

uses
  Forms,
  MainView in 'MainView.pas' {ViewMain},
  MainRunner in 'MainRunner.pas',
  ModelGenerator in 'ModelGenerator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
