unit DOBOTDLL;
{**************************************************************************}
{                                                                          }
{    This C DLL header file first (automatic) conversion generated by:     }
{    HeadConv 4.0 (c) 2000 by Bob Swart (aka Dr.Bob - www.drbob42.com)     }
{      Final Delphi-Jedi (Darth) command-line units edition                }
{                                                                          }
{    Generated Date:  2017/6/22                                            }
{    Generated Time:  9:39:51                                              }
{                                                                          }
{**************************************************************************}

interface
uses
  Windows,DOBOTTYPE;

function  ConnectDobot(const portName: PChar;
                         baudrate: DWORD): Integer cdecl;external 'DOBOTDLL.DLL';
function  SetCmdTimeout(cmdTimeout: DWORD): Integer cdecl;external 'DOBOTDLL.DLL';

function  DisconnectDobot: Integer cdecl;external 'DOBOTDLL.DLL';


function SetPTPCoordinateParams(var ptpCoordinateParams: PTPCOORDINATEPARAMS;
                                   isQueued: Boolean;
                                   var queuedCmdIndex: int64): Integer cdecl;external 'DOBOTDLL.DLL';

function SetPTPCommonParams(var ptpCommonParams: PTPCOMMONPARAMS;
                            isQueued: Boolean;
                            var queuedCmdIndex: int64): Integer cdecl;external 'DOBOTDLL.DLL';

function SetPTPJointParams(var ptpJointParams: PTPJOINTPARAMS;
                              isQueued: Boolean;
                              var queuedCmdIndex:int64): Integer cdecl;external 'DOBOTDLL.DLL';

function GetPTPJointParams(var ptpJointParams: PTPJOINTPARAMS): Integer cdecl;external 'DOBOTDLL.DLL';

function SetPTPCmd(var ptpCmd: PTPCMD; isQueued: Boolean;  var queuedCmdIndex: int64): Integer cdecl;external 'DOBOTDLL.DLL';

function GetPose(var pose: POSE): Integer cdecl;external 'DOBOTDLL.DLL';

function ResetPose(manual: Boolean;
                      rearArmAngle: Single;
                      frontArmAngle: Single):Integer cdecl;external 'DOBOTDLL.DLL';

function SetHOMEParams(var homeParams: HOMEPARAMS;
                          isQueued: Boolean;
                          var queuedCmdIndex: int64):Integer cdecl;external 'DOBOTDLL.DLL';

function GetHOMEParams(var homeParams: HOMEPARAMS):Integer cdecl;external 'DOBOTDLL.DLL';

function SetHOMECmd(var homeCmd: HOMECMD;
                       isQueued: Boolean;
                       var queuedCmdIndex: int64):Integer cdecl;external 'DOBOTDLL.DLL';


{/// JOG functions }
function SetJOGJointParams(var jointJogParams: JOGJOINTPARAMS;
                              isQueued: Boolean; 
                              var queuedCmdIndex: int64): Integer cdecl;external 'DOBOTDLL.DLL';

function GetJOGJointParams(var jointJogParams: JOGJOINTPARAMS): Integer cdecl;external 'DOBOTDLL.DLL';

function SetJOGCoordinateParams(var coordinateJogParams: JOGCOORDINATEPARAMS;
                                   isQueued: Boolean;
                                   var queuedCmdIndex:int64): Integer cdecl;external 'DOBOTDLL.DLL';

function GetJOGCoordinateParams(var coordinateJogParams: JOGCOORDINATEPARAMS): Integer cdecl;external 'DOBOTDLL.DLL';

function SetJOGCommonParams(var jogCommonParams: JOGCOMMONPARAMS;
                               isQueued: Boolean;
                               var queuedCmdIndex: int64):Integer cdecl ;external 'DOBOTDLL.DLL';
function GetJOGCommonParams(var jogCommonParams: JOGCOMMONPARAMS): Integer cdecl;external 'DOBOTDLL.DLL';

function SetJOGCmd(var jogCmd: JOGCMD;
                      isQueued: Boolean;
                      var queuedCmdIndex:int64): Integer cdecl ;external'DOBOTDLL.DLL';


function SetQueuedCmdClear: Integer cdecl ; external'DOBOTDLL.DLL';

function SetQueuedCmdStartExec: Integer cdecl ; external'DOBOTDLL.DLL';

function GetQueuedCmdCurrentIndex(var queuedCmdCurrentIndex: int64): Integer cdecl;external 'DOBOTDLL.DLL';

implementation

end.
