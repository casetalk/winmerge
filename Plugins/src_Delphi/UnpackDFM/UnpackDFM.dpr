library UnpackDFM;

uses
  madExcept,
  madListHardware,
  madListProcesses,
  madListModules,
  ComServ,
  UnpackDFMLib_TLB in 'UnpackDFMLib_TLB.pas',
  WinMergeUnit in 'WinMergeUnit.pas' {WinMergeScript: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.

