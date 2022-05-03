unit WinMerge32BitPluginProxyLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 98336 $
// File generated on 03/05/2022 09:45:35 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\WinMerge\WinMerge32BitPluginProxy.exe (1)
// LIBID: {B8AA7CCC-2D80-4FCB-BF92-145831C091F6}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WinMerge32BitPluginProxyLibMajorVersion = 1;
  WinMerge32BitPluginProxyLibMinorVersion = 0;

  LIBID_WinMerge32BitPluginProxyLib: TGUID = '{B8AA7CCC-2D80-4FCB-BF92-145831C091F6}';

  IID_ILoader: TGUID = '{46C062C2-0497-4004-9FAC-06E4021DA550}';
  CLASS_Loader: TGUID = '{AA6F8426-159F-418E-9FE3-EFB0C46C3DBF}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoader = interface;
  ILoaderDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Loader = ILoader;


// *********************************************************************//
// Interface: ILoader
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {46C062C2-0497-4004-9FAC-06E4021DA550}
// *********************************************************************//
  ILoader = interface(IDispatch)
    ['{46C062C2-0497-4004-9FAC-06E4021DA550}']
    function Load(const bstrPath: WideString; const bstrProgId: WideString): IDispatch; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoaderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {46C062C2-0497-4004-9FAC-06E4021DA550}
// *********************************************************************//
  ILoaderDisp = dispinterface
    ['{46C062C2-0497-4004-9FAC-06E4021DA550}']
    function Load(const bstrPath: WideString; const bstrProgId: WideString): IDispatch; dispid 1;
  end;

// *********************************************************************//
// The Class CoLoader provides a Create and CreateRemote method to          
// create instances of the default interface ILoader exposed by              
// the CoClass Loader. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoader = class
    class function Create: ILoader;
    class function CreateRemote(const MachineName: string): ILoader;
  end;

implementation

uses System.Win.ComObj;

class function CoLoader.Create: ILoader;
begin
  Result := CreateComObject(CLASS_Loader) as ILoader;
end;

class function CoLoader.CreateRemote(const MachineName: string): ILoader;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Loader) as ILoader;
end;

end.
