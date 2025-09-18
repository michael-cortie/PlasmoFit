unit main;

{$mode objfpc}{$H+}

//to do:




interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, LCLIntf, LCLType, ComCtrls, Menus, TADrawUtils,
  INSTRUCTION_FORM, TADrawerSVG, TATransformations, Printers, TAChartUtils, TAChartAxis,
  PrintersDlgs, TAPrint,LIST_INFO, TACustomSeries;

type

  { TForm1 }

  TForm1 = class(TForm)
    background: TLineSeries;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label51: TLabel;
    Label52: TLabel;
    reference: TLineSeries;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CreateLogFile: TCheckBox;
    ITERATE: TButton;
    Edit19: TEdit;
    inflection_points: TLineSeries;
    Label39: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    leftAxisTransformationsAutoScaleAxisTransform1: TAutoScaleAxisTransform;
    rightaxistransformation: TChartAxisTransformations;
    leftAxisTransformations: TChartAxisTransformations;
    DERIV2: TLineSeries;
    DERIV1: TLineSeries;
    INFLECTIONS: TButton;
    Label48: TLabel;
    rightaxistransformationAutoScaleAxisTransform1: TAutoScaleAxisTransform;
    Standard_start: TButton;
    PrintDialog1: TPrintDialog;
    SaveChart: TButton;
    Edit18: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    MANUAL_EDIT_ON: TButton;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    PRINT_FORM: TButton;
    FIRST_GUESS: TButton;
    Edit17: TEdit;
    Label2: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    ProgressBar1: TProgressBar;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioGroup2: TRadioGroup;
    EXPORT_MODEL: TToggleBox;
    Print_Chart: TToggleBox;
    total: TLineSeries;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    interband: TLineSeries;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    peak2: TLineSeries;
    peak1: TLineSeries;
    Label17: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Chart1: TChart;
    experimental: TLineSeries;
    Label16: TLabel;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioGroup1: TRadioGroup;
    ReadFile: TButton;
    Button2: TButton;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label9: TLabel;
    Probe: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    OpenDialog1: TOpenDialog;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    SaveDialog1: TSaveDialog;
    Fit_model: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox14Change(Sender: TObject);
    procedure referenceCustomDrawPointer(ASender: TChartSeries;
      ADrawer: IChartDrawer; AIndex: Integer; ACenter: TPoint);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure CreateLogFileChange(Sender: TObject);
    procedure ITERATEClick(Sender: TObject);
    procedure INFLECTIONSClick(Sender: TObject);
    procedure Standard_startClick(Sender: TObject);
    procedure Edit7EditingDone(Sender: TObject);
    procedure Fit_modelChange(Sender: TObject);
    procedure Fit_modelClick(Sender: TObject);
    procedure SaveChartClick(Sender: TObject);
    procedure EXPORT_MODELChange(Sender: TObject);
    procedure MANUAL_EDIT_ONClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PRINT_FORMClick(Sender: TObject);
    procedure FIRST_GUESSClick(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);

    procedure Edit1Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
   // procedure Export_FileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton10Change(Sender: TObject);
    procedure RadioButton11Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadioButton6Change(Sender: TObject);
    procedure RadioButton7Change(Sender: TObject);
    procedure RadioButton8Change(Sender: TObject);
    procedure RadioButton9Change(Sender: TObject);
    procedure ReadFileClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ProbeClick(Sender: TObject);

    procedure Print_ChartChange(Sender: TObject);
    //procedure ToggleBox1Change(Sender: TObject);
    //procedure SHOW_HELP;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}

const
  MAX_PTS = 10000;
  MAX_DERIV_WINDOW=100;


  //set two step sizes
  COARSE = 0.005;
  FINE=0.001;

{ TForm1 }

type
  DATA_POINT=record
    WAVE : double; //nm
    ATTEN : double; //intensity
  end;


  glndata = array [1..MAX_DERIV_WINDOW] of real;  //for LINEAR_FILTER regression routine

  var

    EXPT : array[0..MAX_PTS] of DATA_POINT; //the latest experimental data set
    DERIV1st : array[0..MAX_PTS] of DATA_POINT; //re-use data structure
    DERIV2nd : array[0..MAX_PTS] of DATA_POINT; //re-use data structure
    DERIV_WINDOW : integer; //number of data points for the linear fit
    REF :  array[0..MAX_PTS] of DATA_POINT; //reference spectrum

    TOTAL_EXPT_PTS : integer;
    TOTAL_REF_PTS : integer;

    WAV_MIN, WAV_MAX : double; //min max wavelengths
    YMAX : single; //max value of experimental data

    MODEL : array[0..MAX_PTS] of DATA_POINT; //the calculated array
    //which is trhe sum of the following...
    BACK : array[0..MAX_PTS] of DATA_POINT; //exponential decay for background
    INTERB: array[0..MAX_PTS] of DATA_POINT;
    PLAS1: array[0..MAX_PTS] of DATA_POINT; //first plasmon peak
    PLAS2: array[0..MAX_PTS] of DATA_POINT; //second pasmon peak


    //model parameters
    E_LHS,E_RHS,E_DEC : double;     //exponential background
    I_PK, I_RMS, I_HT : double;     //interband transition as a Gaussian
    G1_PK, G1_RMS, G1_HT : double;  //first plasmon peak as a Gaussian
    G2_PK, G2_RMS, G2_HT : double;  //second plasmon peak as a Gaussian

    LSQE : single; //least square error

    PEAK: array[1..10] of single; //peaks found in experimental data
    INFLECT: array[1..10] of single; //inflection points found in experimnetal data

    LOGFILENAME : string;

    STEP : double; //amount by which to optimize

    DELIM : string;
    DATA_EXISTS : boolean; //there is data ready to be processed and exported
    REF_EXISTS : boolean; //a reference file has been loaded
    SUCCESSFUL : boolean; //subroutine call was successful
    PREFIX : string; //first part of file name of data file
    FREEZE_COLLECT : boolean; //flag to stop circular refresh of model parameters
    //KILL_REPEAT : boolean;

{ TForm1 }


procedure ZERO_ARRAYS;
var
  I : integer;
  TEMP : double;
begin
  // zero arrays for model & derivatives
  for I:=0 to TOTAL_EXPT_PTS do
  begin
   TEMP:=EXPT[I].WAVE;
   MODEL[I].WAVE:=TEMP;  MODEL[I].ATTEN:=0;  //sum of all the parts
   BACK[I].WAVE:=TEMP;   BACK[I].ATTEN:=0;   //exponential decay for background
   INTERB[I].WAVE:=TEMP; INTERB[I].ATTEN:=0; //intreband contribution
   PLAS1[I].WAVE:=TEMP;  PLAS1[I].ATTEN:=0;  //first plasmon peak
   PLAS2[I].WAVE:=TEMP;  PLAS2[I].ATTEN:=0;  //second plasmon peak
   DERIV1st[I].WAVE:=TEMP; DERIV1st[I].ATTEN:=0;
   DERIV2nd[I].WAVE:=TEMP; DERIV2nd[I]. ATTEN:=0;
  end;



end;


procedure UPDATE_ERROR(ERROR : double);
var
  STUFF : string;

begin
  STUFF:='least square error = '+formatfloat('#.###E-0',ERROR);
  Form1.Label2.caption:=STUFF;
  LSQE:=ERROR;
end;


procedure UPDATE_SCREEN;
var
  STUFF : string;
  //RES   : integer;

begin
  //update screen
  str(E_LHS:5:3,STUFF);
  Form1.Edit5.text:=STUFF;

  str(E_RHS:5:3,STUFF);
  Form1.Edit6.text:=STUFF;

  STUFF:=formatfloat('#.####E-0',E_DEC);
  Form1.Edit7.text:=STUFF;
  
  str(I_PK:7:2,STUFF);
  Form1.Edit8.text:=STUFF;

  str(I_RMS:7:3,STUFF);
  Form1.Edit9.text:=STUFF;

  str(I_HT:7:3,STUFF);
  Form1.Edit10.text:=STUFF;


  str(G1_PK:7:2,STUFF);
  Form1.Edit11.text:=STUFF;

  str(G1_RMS:7:3,STUFF);
  Form1.Edit12.text:=STUFF;

  str(2.35482*G1_RMS:7:3,STUFF);
  form1.label35.caption:='FWHM Gaussian1 (eV) = '+STUFF;

  str(G1_HT:7:3,STUFF);
  Form1.Edit13.text:=STUFF;


  if Form1.RadioButton9.checked then //OK, using the model with two peaks
  begin //update parameters of second plasmon peak
    str(G2_PK:7:2,STUFF);
    Form1.Edit14.text:=STUFF;

    str(G2_RMS:7:3,STUFF);
    Form1.Edit15.text:=STUFF;

    str(2.35482*G2_RMS:7:3,STUFF);
    form1.label36.caption:='FWHM Gaussian2 (eV) = '+STUFF;

    str(G2_HT:7:3,STUFF);
    Form1.Edit16.text:=STUFF;

  end;//of the two model screen update
end;

procedure ENABLE_EDITING;
begin
   //Form1.edit5.readonly:=false;
  Form1.Edit5.enabled:=true;

   Form1.edit6.enabled:=true;
   Form1.edit7.enabled:=true;
   Form1.edit8.enabled:=true;
   Form1.edit9.enabled:=true;
   Form1.edit10.enabled:=true;
   Form1.edit11.enabled:=true;
   Form1.edit12.enabled:=true;
   Form1.edit13.enabled:=true;
   Form1.edit14.enabled:=true;
   Form1.edit15.enabled:=true;
   Form1.edit16.enabled:=true;
end;

procedure DISABLE_EDITING;
begin
  // Form1.edit5.readonly:=true;
  Form1.edit5.enabled:=false;

   Form1.edit6.enabled:=false;
   Form1.edit7.enabled:=false;
   Form1.edit8.enabled:=false;
   Form1.edit9.enabled:=false;
   Form1.edit10.enabled:=false;
   Form1.edit11.enabled:=false;
   Form1.edit12.enabled:=false;
   Form1.edit13.enabled:=false;
   Form1.edit14.enabled:=false;
   Form1.edit15.enabled:=false;
   Form1.edit16.enabled:=false;
end;

function CALC_LSD:double;
//calc total least square deviation
var
 I : integer;
 ERROR : double;

begin
  ERROR:=0;
  for I:=1 to TOTAL_EXPT_PTS do
  begin
     ERROR:=ERROR+(sqr(MODEL[I].ATTEN-EXPT[I].ATTEN));
  end;
  CALC_LSD:=ERROR;
end;

procedure COLLECT_OFF_SCREEN;
var
  STUFF : string;
  RES   : integer;

begin
      //read parameters for exponential background
        STUFF:=Form1.Edit5.text; //read exp LHS
        val(STUFF,E_LHS,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read exponential LHS','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;

        STUFF:=Form1.Edit6.text; //read exp RHS
        val(STUFF,E_RHS,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read exponential RHS','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;

        STUFF:=Form1.Edit7.text; //read exp decay
        val(STUFF,E_DEC,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read exponential decay','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;

        //read parameters for interband contribution
        STUFF:=Form1.Edit8.text; //read peak position (nm)
        val(STUFF,I_PK,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read position of interband peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;

        STUFF:=Form1.Edit9.text; //read interband RMS (eV)
        val(STUFF,I_RMS,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read width of interband peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
         if I_RMS=0 then I_RMS:=0.001; //to prevent division by zero error

        STUFF:=Form1.Edit10.text; //read height of interband peak
        val(STUFF,I_HT,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read height of interband peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;

        //read parameters for first plasmon peak

        STUFF:=Form1.Edit11.text; //read peak position (nm)
        val(STUFF,G1_PK,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read position of first plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
        if G1_PK=0 then G1_PK:=0.001; //to prevent division by zero error

        STUFF:=Form1.Edit12.text; //read peak width (eV)
        val(STUFF,G1_RMS,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read width of first plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
         if G1_RMS=0 then G1_RMS:=0.001; //to prevent division by zero error

        STUFF:=Form1.Edit13.text; //read height of peak
        val(STUFF,G1_HT,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read height of first plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
        if G1_HT=0 then G1_HT:=0.00001; //prevent division by zero error

        //if Form1.RadioButton9.checked then //OK, using the model with two peaks
        //begin //read parameters of second plasmon peak
        //(just do it anyway!!
        STUFF:=Form1.Edit14.text; //read peak position (nm)
        val(STUFF,G2_PK,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read position of second plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
         if G2_PK=0 then G2_PK:=0.00001; //prevent division by zero error

        STUFF:=Form1.Edit15.text; //read peak width (eV)
        val(STUFF,G2_RMS,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read width of second plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
         if G2_RMS=0 then G2_RMS:=0.00001; //prevent division by zero error

        STUFF:=Form1.Edit16.text; //read height of peak
        val(STUFF,G2_HT,RES);
        if (RES<>0)then
         begin
           Application.MessageBox('Could not read height of second plasmon peak','Error',MB_ICONEXCLAMATION+MB_OK);
           SUCCESSFUL:=false;
         end;
         if G2_HT=0 then G2_HT:=0.00001; //prevent division by zero error

        //end;//of the two model screen read

end;

function ENERGY(WAVELENGTH : double) : double;
//convert wavelength in nm to eV
begin
   ENERGY:=1.2398/WAVELENGTH*1000;
end;

procedure CALC_MODEL;
var
   I : integer;
   BACKG,IB,G1,G2 : double;
   eV : double; //Gaussians are defined here in energy space
   PEAK1_POS,PEAK2_POS,IB_PEAK_POS : double; //temp variables for peak position in eV


begin
  PEAK1_POS:=ENERGY(G1_PK);
  PEAK2_POS:=ENERGY(G2_PK);
  IB_PEAK_POS:=ENERGY(I_PK);

  for I :=1 to TOTAL_EXPT_PTS do
  begin

     eV:=ENERGY(MODEL[I].WAVE);

     //calculate exponential background
     BACKG:=E_RHS+(E_LHS-E_RHS)*exp(-E_DEC*(EXPT[I].WAVE-WAV_MIN));
     BACK[I].ATTEN:=BACKG;

     //calculate interband transition
     IB:= I_HT*exp(-1/2*sqr(eV-IB_PEAK_POS)/(sqr(I_RMS)));
     INTERB[I].ATTEN:=IB;

     //caculate plasmon peak 1
     G1:=G1_HT*exp(-1/2*sqr(eV-PEAK1_POS)/(sqr(G1_RMS)));
     PLAS1[I].ATTEN:=G1;

     if Form1.RadioButton9.checked then
     begin
       //calculate plasmon peak 2
       G2:=G2_HT*exp(-1/2*sqr(eV-PEAK2_POS)/(sqr(G2_RMS)));
       PLAS2[I].ATTEN:=G2;
     end;

     //sum it all up
     MODEL[I].ATTEN:=BACK[I].ATTEN+INTERB[I].ATTEN+PLAS1[I].ATTEN+PLAS2[I].ATTEN;
  end;

end;

procedure PLOT_MODEL;
var
  I : integer;
  TEMP : double;

begin
  Form1.peak1.clear;
  Form1.peak2.clear;
  Form1.interband.clear;
  Form1.background.clear;
  Form1.total.clear;
  //experimental.clear; //experimental.ShowInLegend:=false;
  for I:=1 to TOTAL_EXPT_PTS do
  begin
     Form1.background.addxy(BACK[I].WAVE,BACK[I].ATTEN);

     TEMP:=BACK[I].ATTEN+INTERB[I].ATTEN;
     Form1.interband.addxy(INTERB[I].WAVE,TEMP);

     TEMP:= BACK[I].ATTEN + PLAS1[I].ATTEN;
     Form1.peak1.addxy(MODEL[I].WAVE,TEMP);

     if Form1.RadioButton9.checked then
     begin
       TEMP:= BACK[I].ATTEN  + PLAS2[I].ATTEN;
       Form1.peak2.addxy(MODEL[I].WAVE,TEMP);
     end;

     TEMP:=BACK[I].ATTEN + INTERB[I].ATTEN +PLAS1[I].ATTEN + PLAS2[I].ATTEN;
     Form1.total.addxy(MODEL[I].WAVE,TEMP);
  end;

end;

procedure TForm1.ProbeClick(Sender: TObject);
var
  FNAME : string;
  INSTUFF : textfile;
  STUFF : string; //generic string
  //TT1,TT2: double;
  //RES : integer;
  //TEMP : integer; //debugging

begin

  OpenDialog1.DefaultExt:='xy';
  OpenDialog1.Filter:='all files|*.*';
  if OpenDialog1.Execute then
  begin
     FNAME:=OpenDialog1.FileName;
     if FNAME='' then exit;
    // Edit2.Text:=FNAME;

     //set this to be the current directory
     SetCurrentDir(ExtractFileDir(FNAME)); { *Converted from SetCurrentDir* }

     //OK now extract the PREFIX & file name
     Label3.caption:=ExtractFilePath(FNAME);
     Label9.caption:=ExtractFileName(FNAME);
   end;

   //MODEL first 5 lines of file

   AssignFile(INSTUFF,FNAME);
      {$I-} //allow for own error trapping rather than system
      Reset(INSTUFF);

      if IoResult<>0 then
      begin
        MessageDlg('File access error on data file', mtWarning, [mbOk], 0);
        Form1.Cursor:=crDefault;
        closefile(INSTUFF);
        {$I+}
        exit;
      end;
      {$I+}

      //read line1
      readln(INSTUFF,STUFF);
      Label11.caption:='line 1--> '+STUFF;
      //read line2
      readln(INSTUFF,STUFF);
      Label12.caption:='line 2--> '+STUFF;
      //read line3
      readln(INSTUFF,STUFF);
      Label13.caption:='line 3--> '+STUFF;
      //read line4
      readln(INSTUFF,STUFF);
      Label14.caption:='line 4--> '+STUFF;
      //read line5
      readln(INSTUFF,STUFF);
      Label15.caption:='line 5--> '+STUFF;

      closefile(INSTUFF);
end;

procedure REDO_MODEL;
//utility to update plot of model if some parameters have changed
begin
  if DATA_EXISTS then
  begin
    if not FREEZE_COLLECT then
    begin
      SUCCESSFUL:=true;
      COLLECT_OFF_SCREEN;
      if not SUCCESSFUL then exit;
    end;

    ZERO_ARRAYS;

    CALC_MODEL;
    PLOT_MODEL;
    UPDATE_ERROR(CALC_LSD);
  end;
end;

procedure CALC_INTERBAND;
var
  INTEGRAL,BASE : double;
  I : integer;
  EV_ARRAY:array[1..MAX_PTS] of double;
  STUFF : string;

begin
  INTEGRAL:=0;
  for I:=1 to TOTAL_EXPT_PTS do EV_ARRAY[I]:=ENERGY(INTERB[I].WAVE);
  for I:=1 to TOTAL_EXPT_PTS-1 do
  begin
     BASE:=EV_ARRAY[I]-EV_ARRAY[I+1]; //a positive number
     INTEGRAL:=INTEGRAL+BASE*0.5*(INTERB[I].ATTEN+INTERB[I+1].ATTEN);
  end;
  str(INTEGRAL:8:4,STUFF);
  form1.label37.caption:='interband contribution (eV) = '+STUFF;
end;
procedure CALC_PEAK1;
var
  INTEGRAL,BASE : double;
  I : integer;
  EV_ARRAY:array[1..MAX_PTS] of double;
  STUFF : string;

begin
  INTEGRAL:=0;
  for I:=1 to TOTAL_EXPT_PTS do EV_ARRAY[I]:=ENERGY(INTERB[I].WAVE);
  for I:=1 to TOTAL_EXPT_PTS-1 do
  begin
     BASE:=EV_ARRAY[I]-EV_ARRAY[I+1]; //a positive number
     INTEGRAL:=INTEGRAL+BASE*0.5*(PLAS1[I].ATTEN+PLAS1[I+1].ATTEN);
  end;
  str(INTEGRAL:8:4,STUFF);
  form1.label46.caption:='Peak1 area (eV) = '+STUFF;
end;

procedure CALC_PEAK2;
var
  INTEGRAL,BASE : double;
  I : integer;
  EV_ARRAY:array[1..MAX_PTS] of double;
  STUFF : string;

begin

  if PLAS2[TOTAL_EXPT_PTS].ATTEN<0.01 then
  begin
    INTEGRAL:=0;
    for I:=1 to TOTAL_EXPT_PTS do EV_ARRAY[I]:=ENERGY(INTERB[I].WAVE);
    for I:=1 to TOTAL_EXPT_PTS-1 do
    begin
       BASE:=EV_ARRAY[I]-EV_ARRAY[I+1]; //a positive number
       INTEGRAL:=INTEGRAL+BASE*0.5*(PLAS2[I].ATTEN+PLAS2[I+1].ATTEN);
    end;
    str(INTEGRAL:8:4,STUFF);
    form1.label47.caption:='Peak2 area (eV) = '+STUFF;
  end else form1.label47.caption:='not safe to calc peak 2 area'
end;

procedure TForm1.Fit_modelClick(Sender: TObject);
var
  //RES,I : integer;
  INDEX,ITERATIONS,WHICH,ENTRY,RES: integer;
  OLD_ERROR,NEW_ERROR : double;
  OPTIMIZE: array[1..12] of integer; //this holds the indices of whatever needs to be optimized
  OLD : double; //used to store prevoious value of a parameter in case we need to restore it
  INCREMENT : integer; //numer of attempts before exiting loop
  STUFF: string;

procedure GET_LIST_FOR_OPTMIZING;
var
  I : integer;
begin
  //read which variables to optimize
  for I:=1 to 12 do OPTIMIZE[I]:=0; //start by zeroing it

  for I:=1 to 12 do //scan form and put live ones into a list
  begin
  INDEX:=0;
    if CheckBox1.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=1;  end;
    if CheckBox2.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=2;  end;
    if CheckBox3.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=3;  end;
    if CheckBox4.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=4;  end;
    if CheckBox5.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=5;  end;
    if CheckBox6.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=6;  end;
    if CheckBox7.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=7;  end;
    if CheckBox8.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=8;  end;
    if CheckBox9.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=9;  end;
    if CheckBox10.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=10;  end;
    if CheckBox11.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=11;  end;
    if CheckBox12.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=12;  end;
  end;
end;

procedure ATTEMPT(CHOICE : integer);
var
  CHANGE : double;
  JUMP : double;
begin

   JUMP:=random*STEP;
   if random(1000)>500 then CHANGE:=1+JUMP else CHANGE:=1-JUMP;


   //now make a copy of current value of parameter
   case CHOICE of
    1: OLD:=E_LHS;
    2: OLD:=E_RHS;
    3: OLD:=E_DEC;
    4: OLD:=I_PK;
    5: OLD:=I_RMS;
    6: OLD:=I_HT;
    7: OLD:=G1_PK;
    8: OLD:=G1_RMS;
    9: OLD:=G1_HT;
    10: OLD:=G2_PK;
    11: OLD:=G2_RMS;
    12: OLD:=G2_HT;
   else
     begin
     Application.MessageBox('Critical error. Ran over end of first case statement!','Error',MB_ICONEXCLAMATION+MB_OK);
     halt;
     end;
   end;

   //now change parameter
   case CHOICE of
    1: E_LHS:=E_LHS*CHANGE;
    2: E_RHS:=E_RHS*CHANGE;
    3: E_DEC:=E_DEC*CHANGE;
    4: I_PK:=I_PK*CHANGE;
    5: I_RMS:=I_RMS*CHANGE;
    6: I_HT:=I_HT*CHANGE;
    7: G1_PK:=G1_PK*CHANGE;
    8: G1_RMS:=G1_RMS*CHANGE;
    9: G1_HT:=G1_HT*CHANGE;
    10: G2_PK:=G2_PK*CHANGE;
    11: G2_RMS:=G2_RMS*CHANGE;
    12: G2_HT:=G2_HT*CHANGE;

   end;

   CALC_MODEL;
end;

procedure REVERT(CHOICE: integer);
begin
   //OK, was unsuccessful so revert
   case CHOICE of
    1: E_LHS:=OLD;
    2: E_RHS:=OLD;
    3: E_DEC:=OLD;
    4: I_PK:=OLD;
    5: I_RMS:=OLD;
    6: I_HT:=OLD;
    7: G1_PK:=OLD;
    8: G1_RMS:=OLD;
    9: G1_HT:=OLD;
    10: G2_PK:=OLD;
    11: G2_RMS:=OLD;
    12: G2_HT:=OLD;

   end;

end;

begin

  FIRST_GUESSClick(SENDER); //generate a first guess

  //if KILL_REPEAT then begin KILL_REPEAT:=false; exit; end; //a clumsy scheme to deal with a problem in the message queue

  STUFF:=Edit17.text;
  val(STUFF,INCREMENT,RES);
  if (RES<>0)then
  begin
    Application.MessageBox('Could not read step size','Error',MB_ICONEXCLAMATION+MB_OK);
    INCREMENT:=1000;
  end;

  ZERO_ARRAYS;
  FREEZE_COLLECT:=true;
  MANUAL_EDIT_ON.visible:=true;

  DISABLE_EDITING;
  //stop any refresh of model parameters from screen
  //OK, now plot the starting model
  CALC_MODEL;
  OLD_ERROR:=CALC_LSD;//store starting least square error
  //update display
  UPDATE_ERROR(OLD_ERROR);

  PLOT_MODEL;

  GET_LIST_FOR_OPTMIZING;

  if INDEX=0 then
  begin
     Application.MessageBox('No parameters selected for optimization!','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
  end;

  Form1.enabled:=false; //lock all buttons etc to prevent re-entry of code

  ITERATIONS:=0;
  screen.cursor:=crHourGlass;

  //Timer1.enabled:=true;
  progressbar1.visible:=true;
  repeat
    ITERATIONS:=ITERATIONS+1;

    if ITERATIONS mod 500 = 0 then
    begin
        progressbar1.position:=trunc(ITERATIONS/INCREMENT*100);
        CALC_MODEL;
        PLOT_MODEL;
        UPDATE_ERROR(CALC_LSD);
        UPDATE_SCREEN;
        Form1.update;
        application.processmessages;
    end;

    //select one at random
    ENTRY:=1+random(INDEX); //choose one

    WHICH:=OPTIMIZE[ENTRY]; //a form of indirect addressing
    OLD_ERROR:=CALC_LSD; //record error for current parameters
   // DEBUG_ERROR:=OLD_ERROR; //store for checking later

    ATTEMPT(WHICH);

    NEW_ERROR:=CALC_LSD;
    if NEW_ERROR>OLD_ERROR
      then REVERT(WHICH)
      else
      begin
        UPDATE_ERROR(CALC_LSD);

        UPDATE_SCREEN;
      end;

    CALC_MODEL; //refresh model to current best state
    //application.processmessages;


  until (ITERATIONS>INCREMENT);
  progressbar1.position:=0;
  progressbar1.visible:=false;
  Form1.enabled:=true; //unlock all buttons etc
  //Timer1.enabled:=false;

  UPDATE_ERROR(CALC_LSD);
  UPDATE_SCREEN;
  PLOT_MODEL;
  CALC_INTERBAND;
  CALC_PEAK1;
  if RadioButton9.checked=true then CALC_PEAK2 else label47.caption:='peak 2 area (eV) = ------';
  EXPORT_MODEL.enabled:=true;
  screen.cursor:=crDefault;

end;

procedure TForm1.Print_ChartChange(Sender: TObject);
var
  R: TRect;
  d: Integer;
begin
  if not PrintDialog1.Execute then exit;
  Printer.BeginDoc;
try
  d := Printer.XDPI div 2; // pixel count for 1/2 inch
  R := Rect(d, d, Printer.PageWidth - d, Printer.PageHeight div 2);
  Chart1.Draw(TPrinterDrawer.Create(Printer, true), R);
finally
  Printer.EndDoc;
end;

end;



procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TForm1.ReadFileClick(Sender: TObject);
var
  FNAME : string;
  INSTUFF : textfile;
  STUFF,ST1,ST2 : string; //generic strings
  I,SKIP,RES,RES1,RES2 : integer; //number of header lines to skip
  //WAYS : integer; //three different ways data could be stored in experimental file
  X,Y: double;
  CC : integer;//utility variable

  COUNTER: integer; //as above

begin

  //clear out old experimental data (if not the first time through)
  for I:=1 to MAX_PTS do
  begin
     EXPT[I].WAVE:=0;
     EXPT[I].ATTEN:=0;
  end;

  YMAX:=-999;

  DATA_EXISTS:=false;
  chart1.axisList[0].grid.visible:=true;
  chart1.axisList[2].grid.visible:=false;

  INFLECTION_LIST.hide;

  //collect wavelength range
  STUFF:=Edit2.text;
  val(STUFF,WAV_MIN,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Starting wavelength seems invalid','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

  STUFF:=Edit3.text;
  val(STUFF,WAV_MAX,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Ending wavelength seems invalid','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

  label2.caption:='';
  label35.caption:='';
  Label36.caption:='';
  label37.caption:='';
  label46.caption:='';
  label47.caption:='';


  experimental.clear; experimental.ShowInLegend:=true;
  peak1.clear;
  peak2.clear;
  background.clear;
  interband.clear;
  total.clear;
  DERIV1.clear;
  DERIV2.clear;
  DERIV2.ShowInLegend:=false;
  inflection_points.clear;
  inflection_points.ShowInLegend:=false;

  OpenDialog1.DefaultExt:='xy';
  OpenDialog1.Filter:='all files|*.*';
  if OpenDialog1.Execute then
  begin
     FNAME:=OpenDialog1.FileName;
     if FNAME='' then exit;

     //set this to be the current directory
     SetCurrentDir(ExtractFileDir(FNAME));

     //OK now extract the PREFIX & file name
     Label3.caption:=ExtractFilePath(FNAME);
     PREFIX:=ExtractFileName(FNAME);
     CC:=pos('.',PREFIX);
     PREFIX:=copy(PREFIX,0,CC-1);
     edit18.text:=PREFIX+'_model';
     Label9.caption:=PREFIX;


    //check if must skip a few header lines
   STUFF:=Edit1.text;
   val(STUFF,SKIP,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Invalid number of header lines','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

   AssignFile(INSTUFF,FNAME);
      //{$I-} //allow for own error trapping rather than system
      Reset(INSTUFF);

      if IoResult<>0 then
      begin
        MessageDlg('File access error on data file', mtWarning, [mbOk], 0);
        Form1.Cursor:=crDefault;
        closefile(INSTUFF);
        {$I+}
        exit;
      end;
      {$I+}

      //skip header lines if required
      if SKIP>0 then
      for I:=1 to SKIP do readln(INSTUFF,STUFF);

      COUNTER:=1; //used to track progress into file
      //OK, now for the real action!
      repeat

        {$I-} //allow for own error trapping rather than system
        readln(INSTUFF,STUFF);
        if IoResult<>0 then
        begin
          MessageDlg('File error, maybe has read past end of file?', mtWarning, [mbOk], 0);
          closefile(INSTUFF);
          {$I+}
          exit;
        end;
        {$I+}

        if length(STUFF)>4 then  //avoid lines with one or two garbage characters
        begin
          STUFF:=trim(STUFF);
          CC:=pos(DELIM,STUFF);
          ST1:=copy(STUFF,0,CC-1);
          ST2:=copy(STUFF,CC+1,length(STUFF));
          val(ST1,X,RES1);
          val(ST2,Y,RES2);

          if RES1<>0 then
          begin
            MessageDlg('X value is did not convert to a number?', mtWarning, [mbOk], 0);
            closefile(INSTUFF);
            exit;
          end;

          if RES2<>0 then
          begin
            MessageDlg('Y value is did not convert to a number?', mtWarning, [mbOk], 0);
            closefile(INSTUFF);
            exit;
          end;


          if X>=WAV_MIN then //only use data in designated range
          begin

            //load into array of experimental points
            EXPT[COUNTER].WAVE:=X;
            EXPT[COUNTER].ATTEN :=Y;

            if Y>YMAX then YMAX:=Y;  //increase vertical scale

            experimental.AddXY(X,Y);

            COUNTER:=COUNTER+1;
          end;
        end;

      until eof(INSTUFF)or(X>WAV_MAX);

      closefile(INSTUFF);

      TOTAL_EXPT_PTS:=COUNTER-1;

      //get estimates for the following two parameters
      //disable for now
     // E_LHS:=EXPT[1].ATTEN;
      //E_RHS:=EXPT[TOTAL_EXPT_PTS].ATTEN;
      //str(E_LHS:5:3,STUFF); Edit5.text:=STUFF;
     // str(E_RHS:5:3,STUFF); Edit6.text:=STUFF;


      DATA_EXISTS:=true;
      str(TOTAL_EXPT_PTS,STUFF);
      Label16.caption:=STUFF+' points in memory';
      if REF_EXISTS then Button9.enabled:=true;

      chart1.AxisList[0].range.min:=0;
      chart1.AxisList[0].range.max:=YMAX;

      INFLECTIONS.enabled:=true;
      Fit_model.enabled:=true;
      FIRST_GUESS.enabled:=true;
      EXPORT_MODEL.enabled:=false; //nothing to export at this point!
     end //of OpenDialog.execute
     else MessageDlg('No file name chosen', mtWarning, [mbOk], 0);
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DELIM:=chr(9); //set as <space>
  DATA_EXISTS:=false;
  FREEZE_COLLECT:=false;
  STEP:=COARSE; //set step size;
  //KILL_REPEAT:=false; //a clumsy flag to deal with an issue in the message queue
  randomize;
end;

procedure TForm1.RadioButton10Change(Sender: TObject);
begin
  if radioButton10.checked then STEP:=COARSE;
end;

procedure TForm1.RadioButton11Change(Sender: TObject);
begin
  if radiobutton11.checked then STEP:=FINE;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  //Label19.visible:=true;
  //ReadFile.enabled:=false; why??
  //Export_File.enabled:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  checkBox1.checked:=true;
  checkBox2.checked:=true;
  checkBox3.checked:=true;
  checkBox4.checked:=true;
  checkBox5.checked:=true;
  checkBox6.checked:=true;
  checkBox7.checked:=true;
  checkBox8.checked:=true;
  checkBox9.checked:=true;
  checkBox10.checked:=true;
  checkBox11.checked:=true;
  checkBox12.checked:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   checkBox1.checked:=false;
  checkBox2.checked:=false;
  checkBox3.checked:=false;
  checkBox4.checked:=false;
  checkBox5.checked:=false;
  checkBox6.checked:=false;
  checkBox7.checked:=false;
  checkBox8.checked:=false;
  checkBox9.checked:=false;
  checkBox10.checked:=false;
  checkBox11.checked:=false;
  checkBox12.checked:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  TEMP : real;
begin
  TEMP:=chart1.AxisList[0].range.max;
  chart1.AxisList[0].range.max:=TEMP+0.1;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  TEMP : real;
begin
  TEMP:=chart1.AxisList[0].range.max;
  chart1.AxisList[0].range.max:=TEMP-0.1;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  OUTSTUFF : text;
  REPLY : integer;
  STR1 : string;

begin
  //issue warning
   REPLY:=Application.MessageBox('This will (re-)inititalize the chosen logfile. Proceed?','WARNING',MB_ICONEXCLAMATION+MB_YESNO);
   if REPLY=ID_NO then exit;


   //otherwise go ahead and wipe it
   AssignFile(OUTSTUFF,LOGFILENAME);
   //{$I-} //allow for own error trapping rather than system

   Rewrite(OUTSTUFF);

   STR1:='file,exp_LHS,exp_RHS,exp_rate,IB_peak,IB_width,IB_height,Gauss1_peak,Gauss1_width,Gauss1_height,';
   STR1:=STR1+'Gauss2_peak,Gauss2_width,Gauss2_height,LSQ_error,data_peak1,data_peak2,data_peak3,data_peak4,';
   STR1:=STR1+'inflection1,inflection2,inflection3,inflection4,inflection5';
   writeln(OUTSTUFF,STR1);
   Closefile(OUTSTUFF);

   if IoResult<>0 then
   begin
     MessageDlg('File write error when erasing log file', mtWarning, [mbOk], 0);
     Form1.Cursor:=crDefault;
     closefile(OUTSTUFF);
     {$I+}
     exit;
   end;
   {$I+}
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  OUTSTUFF : text;
  REPLY : integer;
  STR1 : string;

begin
  SaveDialog1.DefaultExt:='csv';
  SaveDialog1.Filter:='all files|*.*';
  //SaveDialog1.FileName:=Edit18.text+'.csv';
  if SaveDialog1.Execute then
  begin
     LOGFILENAME:=SaveDialog1.FileName;
     if LOGFILENAME='' then LOGFILENAME:='logfile.csv';
  end;
  Label39.caption:=extractfilename(LOGFILENAME);

  //issue warning
   if fileexists(LOGFILENAME) then
   begin
     REPLY:=Application.MessageBox('Logfile aready exists. This will re-inititalize the chosen logfile. Proceed?','WARNING',MB_ICONEXCLAMATION+MB_YESNO);
     if REPLY=ID_NO then exit;
   end;

   //otherwise go ahead and wipe it
   AssignFile(OUTSTUFF,LOGFILENAME);
   //{$I-} //allow for own error trapping rather than system

   Rewrite(OUTSTUFF);

   STR1:='file,exp_LHS,exp_RHS,exp_rate,IB_peak,IB_width,IB_height,Gauss1_peak,Gauss1_width,Gauss1_height,';
   STR1:=STR1+'Gauss2_peak,Gauss2_width,Gauss2_height,LSQ_error,data_peak1,data_peak2,data_peak3,data_peak4,';
   STR1:=STR1+'inflection1,inflection2,inflection3,inflection4,inflection5';
   writeln(OUTSTUFF,STR1);
   Closefile(OUTSTUFF);

   if IoResult<>0 then
   begin
     MessageDlg('File write error when attempting to create/rec-create logfile', mtWarning, [mbOk], 0);
     Form1.Cursor:=crDefault;
     closefile(OUTSTUFF);
     {$I+}
     exit;
   end;
   {$I+}


end;

procedure TForm1.Button8Click(Sender: TObject);
var
  FNAME : string;
  INSTUFF : textfile;
  STUFF,ST1,ST2 : string; //generic strings
  I,SKIP,RES,RES1,RES2 : integer; //number of header lines to skip
  //WAYS : integer; //three different ways data could be stored in experimental file
  X,Y : double;
  CC : integer;//utility variable

  COUNTER: integer; //as above

begin

  //clear out old reference data (if not the first time through)
  for I:=1 to MAX_PTS do
  begin
     REF[I].WAVE:=0;
     REF[I].ATTEN:=0;
  end;
  reference.clear;

  YMAX:=-999;

  REF_EXISTS:=false;
  chart1.axisList[0].grid.visible:=true;
  chart1.axisList[2].grid.visible:=false;

  INFLECTION_LIST.hide;

  //collect wavelength range
  STUFF:=Edit2.text;
  val(STUFF,WAV_MIN,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Starting wavelength seems invalid','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

  STUFF:=Edit3.text;
  val(STUFF,WAV_MAX,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Ending wavelength seems invalid','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

  {label2.caption:='';
  label35.caption:='';
  Label36.caption:='';
  label37.caption:='';
  label46.caption:='';
  label47.caption:='';  }


  //experimental.clear;
  experimental.ShowInLegend:=true;
  peak1.clear;
  peak2.clear;
  background.clear;
  interband.clear;
  total.clear;
  DERIV1.clear;
  DERIV2.clear;
  DERIV2.ShowInLegend:=false;
  inflection_points.clear;
  inflection_points.ShowInLegend:=false;

  OpenDialog1.DefaultExt:='xy';
  OpenDialog1.Filter:='all files|*.*';
  if OpenDialog1.Execute then
  begin
     FNAME:=OpenDialog1.FileName;
     if FNAME='' then exit;

     //set this to be the current directory
     SetCurrentDir(ExtractFileDir(FNAME));

     //OK now extract the PREFIX & file name
     Label3.caption:=ExtractFilePath(FNAME);
     PREFIX:=ExtractFileName(FNAME);
     CC:=pos('.',PREFIX);
     PREFIX:=copy(PREFIX,0,CC-1);
     edit18.text:=PREFIX+'_model';
     Label9.caption:=PREFIX;


    //check if must skip a few header lines
   STUFF:=Edit1.text;
   val(STUFF,SKIP,RES);
   if (RES<>0)then
   begin
     Application.MessageBox('Invalid number of header lines','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;

   AssignFile(INSTUFF,FNAME);
      //{$I-} //allow for own error trapping rather than system
      Reset(INSTUFF);

      if IoResult<>0 then
      begin
        MessageDlg('File access error on data file', mtWarning, [mbOk], 0);
        Form1.Cursor:=crDefault;
        closefile(INSTUFF);
        {$I+}
        exit;
      end;
      {$I+}

      //skip header lines if required
      if SKIP>0 then
      for I:=1 to SKIP do readln(INSTUFF,STUFF);

      COUNTER:=1; //used to track progress into file
      //OK, now for the real action!
      repeat

        {$I-} //allow for own error trapping rather than system
        readln(INSTUFF,STUFF);
        if IoResult<>0 then
        begin
          MessageDlg('File error, maybe has read past end of file?', mtWarning, [mbOk], 0);
          closefile(INSTUFF);
          {$I+}
          exit;
        end;
        {$I+}

        if length(STUFF)>4 then  //avoid lines with one or two garbage characters
        begin
          STUFF:=trim(STUFF);
          CC:=pos(DELIM,STUFF);
          ST1:=copy(STUFF,0,CC-1);
          ST2:=copy(STUFF,CC+1,length(STUFF));
          val(ST1,X,RES1);
          val(ST2,Y,RES2);

          if RES1<>0 then
          begin
            MessageDlg('X value is did not convert to a number?', mtWarning, [mbOk], 0);
            closefile(INSTUFF);
            exit;
          end;

          if RES2<>0 then
          begin
            MessageDlg('Y value is did not convert to a number?', mtWarning, [mbOk], 0);
            closefile(INSTUFF);
            exit;
          end;


          if X>=WAV_MIN then //only use data in designated range
          begin

            //load into array of experimental points
            REF[COUNTER].WAVE:=X;
            REF[COUNTER].ATTEN :=Y;

            if Y>YMAX then YMAX:=Y;  //increase vertical scale

            Reference.AddXY(X,Y);

            COUNTER:=COUNTER+1;
          end;
        end;

      until eof(INSTUFF)or(X>WAV_MAX);

      closefile(INSTUFF);

      TOTAL_REF_PTS:=COUNTER-1;

      //get estimates for the following two parameters
      //disable for now
     // E_LHS:=EXPT[1].ATTEN;
      //E_RHS:=EXPT[TOTAL_EXPT_PTS].ATTEN;
      //str(E_LHS:5:3,STUFF); Edit5.text:=STUFF;
     // str(E_RHS:5:3,STUFF); Edit6.text:=STUFF;


      REF_EXISTS:=true;
      Reference.ShowInLegend:=true;
      checkBox14.enabled:=true;

      if DATA_EXISTS then Button9.enabled:=true;

      str(TOTAL_EXPT_PTS,STUFF);
      Label16.caption:=STUFF+' points in memory';

      chart1.AxisList[0].range.min:=0;
      chart1.AxisList[0].range.max:=YMAX;

      {INFLECTIONS.enabled:=true;
      Fit_model.enabled:=true;
      FIRST_GUESS.enabled:=true;
      EXPORT_MODEL.enabled:=false;} //nothing to export at this point!

      label52.caption:=ExtractFileName(FNAME);
     end //of OpenDialog.execute
     else MessageDlg('No reference file name chosen', mtWarning, [mbOk], 0);

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  SUM : single;
  I : integer;
  STR1,STR2 : string;

  R2,XY,X,Y,X2,Y2 : single; //for calculating r^2
  N : integer;
  NUMERATOR,DENOMINATOR : single;

begin
  //check if data sets have same number of points and align
  //if not, cancel operation
  if TOTAL_REF_PTS<>TOTAL_EXPT_PTS then
  begin
    MessageDlg('Mismatch in number of points REF vs EXPT', mtWarning, [mbOk], 0);
    exit;
  end;
  if REF[100].WAVE-EXPT[100].WAVE>0.01 then
  begin
    MessageDlg('REF vs EXPT sets do not align', mtWarning, [mbOk], 0);
    exit;
  end;

  //first calc the measure based on absolaute differences in attenuance
  SUM :=0;
  for I:=1 to TOTAL_EXPT_PTS do
  begin
    SUM:=SUM+abs(REF[I].ATTEN-EXPT[I].ATTEN);
  end;
  SUM:=SUM/TOTAL_EXPT_PTS;
  str(SUM:8:4,STR1);
  STR1:='Average attenuance difference='+STR1;

  //next calc spectral similarity by correlation coeff method
  XY:=0; X:=0; Y:=0; X2:=0; Y2:=0;
  N:=TOTAL_EXPT_PTS;
  //let REF spectrum be X and experimnental spectrum be Y

  for I:=1 to N do
  begin
   XY:=XY+REF[I].ATTEN*EXPT[I].ATTEN;
   X:=X+REF[I].ATTEN;
   Y:=Y+EXPT[I].ATTEN;
   X2:=X2+sqr(REF[I].ATTEN);
   Y2:=Y2+sqr(EXPT[I].ATTEN);
  end;

  NUMERATOR:= N*XY-X*Y;
  DENOMINATOR:= sqrt( (N*X2-sqr(X))*(N*Y2-sqr(Y)));

  R2:=sqr(NUMERATOR/DENOMINATOR);
  str(R2:8:4,STR2);
  STR2:='spectral similarity ='+STR2;

  label51.Caption:=STR1 + '  ,  '+ STR2;

end;

procedure TForm1.CheckBox14Change(Sender: TObject);
begin
  if CheckBox14.checked=false
    then Reference.ShowLines:=false
    else Reference.ShowLines:=true;
end;

procedure TForm1.referenceCustomDrawPointer(ASender: TChartSeries;
  ADrawer: IChartDrawer; AIndex: Integer; ACenter: TPoint);
begin

end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
//find position of mouse and update X,Y display

var
 Pg: TDoublepoint; // g = "graph" coordinates
 Pi: TPoint; // i = "image" coordinates (=pixels)
 STR1,STR2 : string;
 Axis : TChartAxis;

begin
  Pi := Chart1.ScreenToClient(Mouse.CursorPos);
  Pg := Chart1.ImageToGraph(Pi);

  //need to convert from 'graph' coordinate system to that of the left-hand y axis
  Axis := Chart1.AxisList[0];
  Pg.y := axis.GetTransform.GraphToAxis(Pg.y);

  str(Pg.x:8:2,STR1); str(Pg.y:8:3,STR2);
  Label50.caption:=STR1+' , '+STR2;

  //ShowMessage(Format('x=%f, y=%f', [Pg.X, Pg.Y]));
end;

procedure TForm1.CreateLogFileChange(Sender: TObject);
begin
  if CreateLogFile.checked=true
    then button7.enabled:=true else button7.enabled:=false;
end;

procedure TForm1.ITERATEClick(Sender: TObject);
var
 //RES,I : integer;
 INDEX,ITERATIONS,WHICH,ENTRY,RES: integer;
 OLD_ERROR,NEW_ERROR : double;
 OPTIMIZE: array[1..12] of integer; //this holds the indices of whatever needs to be optimized
 OLD : double; //used to store prevoious value of a parameter in case we need to restore it
 INCREMENT : integer; //numer of attempts before exiting loop
 STUFF: string;


procedure GET_LIST_FOR_OPTMIZING;
var
  I : integer;
begin
  //read which variables to optimize
  for I:=1 to 12 do OPTIMIZE[I]:=0; //start by zeroing it

  for I:=1 to 12 do //scan form and put live ones into a list
  begin
  INDEX:=0;
    if CheckBox1.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=1;  end;
    if CheckBox2.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=2;  end;
    if CheckBox3.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=3;  end;
    if CheckBox4.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=4;  end;
    if CheckBox5.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=5;  end;
    if CheckBox6.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=6;  end;
    if CheckBox7.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=7;  end;
    if CheckBox8.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=8;  end;
    if CheckBox9.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=9;  end;
    if CheckBox10.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=10;  end;
    if CheckBox11.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=11;  end;
    if CheckBox12.checked then begin INDEX:=INDEX+1;OPTIMIZE[INDEX]:=12;  end;
  end;
end;

procedure ATTEMPT(CHOICE : integer);
var
  CHANGE : double;
  JUMP : double;
begin

   JUMP:=random*STEP;
   if random(1000)>500 then CHANGE:=1+JUMP else CHANGE:=1-JUMP;


   //now make a copy of current value of parameter
   case CHOICE of
    1: OLD:=E_LHS;
    2: OLD:=E_RHS;
    3: OLD:=E_DEC;
    4: OLD:=I_PK;
    5: OLD:=I_RMS;
    6: OLD:=I_HT;
    7: OLD:=G1_PK;
    8: OLD:=G1_RMS;
    9: OLD:=G1_HT;
    10: OLD:=G2_PK;
    11: OLD:=G2_RMS;
    12: OLD:=G2_HT;
   else
     begin
     Application.MessageBox('Critical error. Ran over end of first case statement!','Error',MB_ICONEXCLAMATION+MB_OK);
     halt;
     end;
   end;

   //now change parameter
   case CHOICE of
    1: E_LHS:=E_LHS*CHANGE;
    2: E_RHS:=E_RHS*CHANGE;
    3: E_DEC:=E_DEC*CHANGE;
    4: I_PK:=I_PK*CHANGE;
    5: I_RMS:=I_RMS*CHANGE;
    6: I_HT:=I_HT*CHANGE;
    7: G1_PK:=G1_PK*CHANGE;
    8: G1_RMS:=G1_RMS*CHANGE;
    9: G1_HT:=G1_HT*CHANGE;
    10: G2_PK:=G2_PK*CHANGE;
    11: G2_RMS:=G2_RMS*CHANGE;
    12: G2_HT:=G2_HT*CHANGE;

   end;

   CALC_MODEL;
end;

procedure REVERT(CHOICE: integer);
begin
   //OK, was unsuccessful so revert
   case CHOICE of
    1: E_LHS:=OLD;
    2: E_RHS:=OLD;
    3: E_DEC:=OLD;
    4: I_PK:=OLD;
    5: I_RMS:=OLD;
    6: I_HT:=OLD;
    7: G1_PK:=OLD;
    8: G1_RMS:=OLD;
    9: G1_HT:=OLD;
    10: G2_PK:=OLD;
    11: G2_RMS:=OLD;
    12: G2_HT:=OLD;

   end;

end;

begin

  if DATA_EXISTS=false then
  begin
      Application.MessageBox('No experimental data in memory!','Error',MB_ICONEXCLAMATION+MB_OK);
      exit;
  end;

  chart1.AxisList[0].range.max:=YMAX;
  inflection_points.ShowInlegend:=false;
  DERIV2.ShowInLegend:=false;
  Peak1.ShowInLegend:=true;
  if RadioButton9.Checked=true then Peak2.ShowInlegend:=true;
  background.ShowInlegend:=true;
  Interband.ShowInLegend:=true;
  Total.ShowinLegend:=true;
  FIRST_GUESSClick(SENDER); //generate a first guess


  STUFF:=Edit17.text;
  val(STUFF,INCREMENT,RES);
  if (RES<>0)then
  begin
    Application.MessageBox('Could not read step size','Error',MB_ICONEXCLAMATION+MB_OK);
    INCREMENT:=1000;
  end;

  ZERO_ARRAYS;
  FREEZE_COLLECT:=true;
  MANUAL_EDIT_ON.visible:=true;

  DISABLE_EDITING;
  //stop any refresh of model parameters from screen
  //OK, now plot the starting model
  CALC_MODEL;
  OLD_ERROR:=CALC_LSD;//store starting least square error
  //update display
  UPDATE_ERROR(OLD_ERROR);

  PLOT_MODEL;

  GET_LIST_FOR_OPTMIZING;

  if INDEX=0 then
  begin
     Application.MessageBox('No parameters selected for optimization!','Error',MB_ICONEXCLAMATION+MB_OK);
     exit;
  end;

  Form1.enabled:=false; //lock all buttons etc to prevent re-entry of code

  ITERATIONS:=0;
  screen.cursor:=crHourGlass;

  //Timer1.enabled:=true;
  progressbar1.visible:=true;
  repeat
    ITERATIONS:=ITERATIONS+1;

    if ITERATIONS mod 500 = 0 then
    begin
        progressbar1.position:=trunc(ITERATIONS/INCREMENT*100);
        CALC_MODEL;
        PLOT_MODEL;
        UPDATE_ERROR(CALC_LSD);
        UPDATE_SCREEN;
        Form1.update;
        application.processmessages;
    end;

    //select one at random
    ENTRY:=1+random(INDEX); //choose one

    WHICH:=OPTIMIZE[ENTRY]; //a form of indirect addressing
    OLD_ERROR:=CALC_LSD; //record error for current parameters
   // DEBUG_ERROR:=OLD_ERROR; //store for checking later

    ATTEMPT(WHICH);

    NEW_ERROR:=CALC_LSD;
    if NEW_ERROR>OLD_ERROR
      then REVERT(WHICH)
      else
      begin
        UPDATE_ERROR(CALC_LSD);

        UPDATE_SCREEN;
      end;

    CALC_MODEL; //refresh model to current best state
    //application.processmessages;


  until (ITERATIONS>INCREMENT);
  progressbar1.position:=0;
  progressbar1.visible:=false;
  Form1.enabled:=true; //unlock all buttons etc
  //Timer1.enabled:=false;

  UPDATE_ERROR(CALC_LSD);
  UPDATE_SCREEN;
  PLOT_MODEL;
  CALC_INTERBAND;
  CALC_PEAK1;
  if RadioButton9.checked=true then CALC_PEAK2 else label47.caption:='peak 2 area (eV) = ------';
  EXPORT_MODEL.enabled:=true;
  screen.cursor:=crDefault;



end;

procedure TForm1.INFLECTIONSClick(Sender: TObject);
var
  HALF : integer;
  II,J : integer;
  X,Y : glndata;
  A,B : real; //intercept and slope of line fitted at some point
  MINUS : boolean;
  WAVE : real;
  ID : integer;
  STR1 : string;

  OD600 : single; //for calculating avg value from 595 to 605 nm
  OD_counts : integer;

  //LIST_OF_INFLECTIONS : array[1..10] of real;

procedure LINFIT (x,y: glndata; ndata: integer;
         var a,b: real);
     //was var a,b,siga,sigb,chi2,q: real);

//from Press & Teukolsky, Numerical Recipes in Pascal
(* Programs using routine LINFIT must define the type
TYPE
   glndata = ARRAY [1..ndata] OF real;
in the main routine.   *)
//here we set MWT to zero from the get go, i.e. data does not come with any standard deviations
//this means some of the code can be dropped from the published routine

var
   i: integer;
   t,sy,sxoss,sx,st2,ss,sigdat: real;

begin
   sx := 0.0;
   sy := 0.0;
   st2 := 0.0;
   b := 0.0;

   for i := 1 to ndata do
   begin
     sx := sx+x[i];
     sy := sy+y[i]
    end;
    ss := ndata;

    sxoss := sx/ss;

    for i := 1 to ndata do
    begin
      t := x[i]-sxoss;
      st2 := st2+t*t;
      b := b+t*y[i];
    end;

   //solve for a, b, skip the others
   b := b/st2;
   a := (sy-sx*b)/ss;
   //siga := sqrt((1.0+sx*sx/(ss*st2))/ss);
   //sigb := sqrt(1.0/st2);
   //chi2 := 0.0;

   //for i := 1 to ndata do
   //begin
   //  chi2 := chi2+sqr(y[i]-a-b*x[i])
  // end;
   //q := 1.0;
  // sigdat := sqrt(chi2/(ndata-2));
  // siga := siga*sigdat;
  // sigb := sigb*sigdat

end;

begin

   STR1:=edit19.text;
   val(STR1,DERIV_WINDOW,ID); //ID just a dummy

   HALF :=trunc(DERIV_WINDOW/2);
   chart1.axisList[0].grid.visible:=false;
   chart1.axisList[2].grid.visible:=true;

   //prepare arrays
   for II:=1 to TOTAL_EXPT_PTS do
   begin
     DERIV1st[II].WAVE:=EXPT[II].WAVE;
     DERIV1st[II].ATTEN:=0;
     DERIV2nd[II].WAVE:=EXPT[II].WAVE;
     DERIV2nd[II].ATTEN:=0;
   end;

   for II:=1 to 10 do
   begin
     PEAK[II]:=0;
     INFLECT[II]:=0;
   end;


   inflection_points.clear;
   inflection_points.ShowInLegend:=true;
   DERIV2.clear;
   DERIV2.ShowInLegend:=true;
   peak1.clear;
   peak2.clear;
   background.clear;
   interband.clear;
   total.clear;
   Peak1.ShowInLegend:=false;
   Peak2.ShowInlegend:=false;
   background.ShowInlegend:=false;
   Interband.ShowInLegend:=false;
   Total.ShowinLegend:=false;

   //step through experimental data and calc OD600
   OD600:=0; OD_counts:=0;

   for J:=HALF+1 to TOTAL_EXPT_PTS-HALF-1 do
   begin
      if (EXPT[J].WAVE>594)and(EXPT[J].WAVE<606) then
      begin
        OD600:=OD600+EXPT[J].ATTEN; inc(OD_counts);
      end;
   end;
   OD600:=OD600/OD_counts;
   str(OD600:5:3,STR1);
   LIST_INFO.INFLECTION_LIST.Label2.caption:=STR1;

   //step through experimental data and calc 1st derivatives
  for II:=HALF+1 to TOTAL_EXPT_PTS-HALF-1 do
  begin

    //zero arrays
    for J:=1 to DERIV_WINDOW do
    begin
      X[J]:=0;
      Y[J]:=0;
    end;

    //now fill with values
    for J:=1 to DERIV_WINDOW do
    begin
       X[J]:=EXPT[II+J-HALF].WAVE;
       Y[J]:=EXPT[II+J-HALF].ATTEN;
    end;

    LINFIT(X,Y,DERIV_WINDOW-1,A,B);
    //here we only make use of B (the slope)

    DERIV1st[II].ATTEN:=B; //wavelength was stored earlier

    //don't plot because it has a very different scale
    //DERIV1.addxy(DERIV1st[II].WAVE,DERIV1st[II].ATTEN);
  end;

  //OK, now look for peaks
  ID:=0;

  //clear old string grid contents
  for J:=1 to 5 do
  begin
    LIST_INFO.INFLECTION_LIST.stringGrid2.cells[1,J]:='';
    LIST_INFO.INFLECTION_LIST.stringGrid2.cells[0,J]:='';
  end;

  if DERIV1st[2*HALF+1].ATTEN<0 then MINUS:=true else MINUS:=false;

  for II:=2*HALF+1 to TOTAL_EXPT_PTS-2*HALF-1 do
  begin
    //check if crossed zero from minus to positive
    if MINUS and (DERIV1st[II].ATTEN>0) then
    begin //has flipped
      //WAVE:=0.5*(DERIV1st[II-1].WAVE+DERIV1st[II].WAVE);
      //str(WAVE:6:1,STR1);
      //ID:=ID+1;
      //PEAK[ID]:=WAVE;

      //LIST_INFO.INFLECTION_LIST.stringGrid2.cells[1,ID]:=STR1;
      //str(ID,STR1);
      //LIST_INFO.INFLECTION_LIST.stringGrid2.cells[0,ID]:=STR1;
      MINUS:=false;
    end;

    //check if crossed zero from positive to minus
    if (not MINUS) and (DERIV1st[II].ATTEN<0) then
    begin //has flipped
      WAVE:=0.5*(DERIV1st[II-1].WAVE+DERIV1st[II].WAVE);
      str(WAVE:6:1,STR1);
      ID:=ID+1;
      PEAK[ID]:=WAVE;
      LIST_INFO.INFLECTION_LIST.stringGrid2.cells[1,ID]:=STR1;
      str(ID,STR1);
      LIST_INFO.INFLECTION_LIST.stringGrid2.cells[0,ID]:=STR1;
      MINUS:=true;
    end;
  end;

    //check if exceeded limit
     if ID>9 then
     begin
       Application.Messagebox('More than 9 peaks in data!','Error',MB_ICONEXCLAMATION+MB_OK);;
       exit;
     end;


  //first derivatives have been done, now do second derivatives
  //step through 1st derivatives  and calc 2nd derivatives
  for II:=2*HALF+1 to TOTAL_EXPT_PTS-2*HALF-1 do
  begin

     //zero arrays
    for J:=1 to DERIV_WINDOW do
    begin
      X[J]:=0;
      Y[J]:=0;
    end;

    //clear string grid contents
    for J:=1 to 10 do
    begin
      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[1,J]:='';
      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[0,J]:='';
    end;

    //now fill with values
    for J:=1 to DERIV_WINDOW do
    begin
       X[J]:=DERIV1st[II+J-HALF].WAVE;
       Y[J]:=DERIV1st[II+J-HALF].ATTEN;
    end;

    LINFIT(X,Y,DERIV_WINDOW-1,A,B);
    //here we only make use of B (the slope)

    DERIV2nd[II].ATTEN:=B; //wavelength was stored earlier

    DERIV2.addxy(DERIV2nd[II].WAVE,DERIV2nd[II].ATTEN);

  end;

  INFLECTION_LIST.show;
  LIST_INFO.INFLECTION_LIST.stringGrid1.cells[0,0]:='Inflection#';
  LIST_INFO.INFLECTION_LIST.stringGrid1.cells[1,0]:='Wavelength, nm';
  LIST_INFO.INFLECTION_LIST.stringGrid2.cells[0,0]:='Peak#';
  LIST_INFO.INFLECTION_LIST.stringGrid2.cells[1,0]:='Wavelength, nm';


  //set first values
  if DERIV2nd[2*HALF+1].ATTEN<0 then MINUS:=true else MINUS:=false;
  ID:=0;

  for II:=2*HALF+1 to TOTAL_EXPT_PTS-2*HALF-1 do
  begin
    //check if crossed zero from minus to positive
    if MINUS and (DERIV2nd[II].ATTEN>0) then
    begin //has flipped
      WAVE:=0.5*(DERIV2nd[II-1].WAVE+DERIV2nd[II].WAVE);
      str(WAVE:6:1,STR1);
      ID:=ID+1;
      inflection_points.addxy(WAVE,0); INFLECT[ID]:=WAVE;

      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[1,ID]:=STR1;
      str(ID,STR1);
      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[0,ID]:=STR1;
      MINUS:=false;
    end;

    //check if crossed zero from positive to minus
    if (not MINUS) and (DERIV2nd[II].ATTEN<0) then
    begin //has flipped
      WAVE:=0.5*(DERIV2nd[II-1].WAVE+DERIV2nd[II].WAVE);
      str(WAVE:6:1,STR1);
      ID:=ID+1;
      //LIST_OF_INFLECTIONS[ID]:=WAVE;
      inflection_points.addxy(WAVE,0); INFLECT[ID]:=WAVE;
      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[1,ID]:=STR1;
      str(ID,STR1);
      LIST_INFO.INFLECTION_LIST.stringGrid1.cells[0,ID]:=STR1;
      MINUS:=true;
    end;

    //check if exceeded limit
  if ID>9 then exit;
    chart1.axisList[0].range.min:=0.1;
    chart1.axisList[0].range.max:=0.4;
  end;

end;

procedure TForm1.Standard_startClick(Sender: TObject);
//var
//   STATUS : boolean;

procedure CHANGE_BUTTONS(STATUS : boolean);
begin
   ReadFile.enabled:=STATUS;
   INFLECTIONS.enabled:=STATUS;
   FIRST_GUESS.enabled:=STATUS;
   ITERATE.enabled:=STATUS;
   PRINT_FORM.enabled:=STATUS;
   EXPORT_MODEL.enabled:=STATUS;
   SaveChart.enabled:=STATUS;
   Print_Chart.enabled:=STATUS;
   Button2.enabled:=STATUS;
end;

begin

  //disable various buttons
  //STATUS:=false;
  CHANGE_BUTTONS(false);

  //set start values
  Edit5.text:='0.4'; //exp value on LHS
  edit6.text:='0.05';  // exp value on RHS
  edit7.text:='7e-3'; //exp decay rate
  edit11.text:='560'; //peak 1 position, nm
  edit12.text:='0.071'; //peak 1 RMS width, eV
  edit13.text:='0.08'; //peak 1 height, a.u.
  edit8.text:='463'; //interband position, nm
  edit9.text:='0.050'; //interband RMS, eV
  edit10.text:='0.01'; //interband height a.u.
  edit14.text:='740'; //peak 2 position, nm
  edit15.text:='0.071'; //peak 2 RMS width, eV
  edit16.text:='0.08'; //peak 2 height, a.u.
  edit2.text:='400'; //lower clip limit, nm
  edit3.text:='820';  //upper clip limit, nm
  checkbox6.checked:=false; //do not touch the IB contribution yet

  radioButton9.Checked:=true; //turn on two peak model

  //just relax two Gaussian peak heights & attenuance on LHS
  checkbox3.checked:=false;
  checkbox7.checked:=false;
  checkbox8.checked:=false;
  checkbox10.checked:=false;
  checkbox11.checked:=false;
  edit17.text:='6000';
  checkbox1.checked:=true;
  checkbox9.checked:=true;
  checkbox12.checked:=true;

  First_GuessClick(Sender);
  ITERATEClick(Sender);

  //now relax two Gaiussian peak widths
  edit17.text:='4000';
  checkbox8.checked:=true;
  checkbox11.checked:=true;
  ITERATEClick(Sender);

  //now relax Gaussian peak positions & background exponnetial decay rate
  edit17.text:='20000';
  checkbox3.checked:=true;
  checkbox7.checked:=true;
  checkbox10.checked:=true;
  ITERATEClick(Sender);

  //now finalize IB contribution
  if CheckBox13.checked then
  begin
    edit17.text:='5000';
    checkbox6.checked:=true;
    ITERATEClick(Sender);
  end;




  Print_FormClick(Sender);

  //turn buttons on again
  CHANGE_BUTTONS(true);

end;



procedure TForm1.SaveChartClick(Sender: TObject);
var
  fs: TFileStream;
  drawer: IChartDrawer;
  R: TRect;
  STUFF : string;

begin
  STUFF:=Edit18.text+'.svg';
  fs := TFileStream.Create(STUFF, fmCreate);
  try
    drawer := TSVGDrawer.Create(fs, true);
    R := Rect(0, 0, Chart1.Width, Chart1.Height);
    Chart1.Draw(drawer, R);
finally
  fs.Free;
end;
end;

procedure TForm1.EXPORT_MODELChange(Sender: TObject);
//write out everything as a CSV

var
  I : integer;
  STUFF,BIT1,BIT2,FNAME : string;
  OUTSTUFF : textfile;


begin

  SaveDialog1.DefaultExt:='csv';
  SaveDialog1.Filter:='all files|*.*';
  SaveDialog1.FileName:=Edit18.text+'.csv';

  if SaveDialog1.Execute then
  begin
     FNAME:=SaveDialog1.FileName;
     if FNAME='' then exit;
     AssignFile(OUTSTUFF,FNAME);
      {$I-} //allow for own error trapping rather than system
      Rewrite(OUTSTUFF);

      if IoResult<>0 then
      begin
        MessageDlg('File write error on output file', mtWarning, [mbOk], 0);
        Form1.Cursor:=crDefault;
        closefile(OUTSTUFF);
        {$I+}
        exit;
      end;
      {$I+}

      STUFF:='nm,experimental,model,background,interband,plasmon1';
      if RadioButton9.checked then STUFF:=STUFF+',plasmon2';
      writeln(OUTSTUFF,STUFF);

       //OK, now write the data, using the selected delimiter
      for I:=1 to TOTAL_EXPT_PTS do
      begin
        str(MODEL[I].WAVE:5:1,BIT1);
        str(MODEL[I].ATTEN:5:3,BIT2);
        STUFF:=BIT1+','+BIT2;

        str(EXPT[I].ATTEN:5:3,BIT1); STUFF:=STUFF+','+BIT1;
        str(BACK[I].ATTEN:5:3,BIT1); STUFF:=STUFF+','+BIT1;
        str(INTERB[I].ATTEN:5:3,BIT1); STUFF:=STUFF+','+BIT1;
        str(PLAS1[I].ATTEN:5:3,BIT1); STUFF:=STUFF+','+BIT1;

         if RadioButton9.checked then
         begin
            str(PLAS2[I].ATTEN:5:3,BIT1); STUFF:=STUFF+','+BIT1;
         end;

        writeln(OUTSTUFF,STUFF);
      end;

      closefile(OUTSTUFF);

      //keep export button enabled in case need to save again with different file name

  end;


end;

procedure TForm1.MANUAL_EDIT_ONClick(Sender: TObject);
begin
  FREEZE_COLLECT:=false;
  ENABLE_EDITING;
  MANUAL_EDIT_ON.visible:=false
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.PRINT_FORMClick(Sender: TObject);
var
  MyBitmap: TBitmap;
  MyDC: HDC;
  STUFF,STR1 :string;
  OUTSTUFF : text;
  I : integer;

begin
     //OK data saved, now save Edit1 of form to record fidelity
     STUFF:=PREFIX+'_screen.bmp';

    //image1.picture.SaveToFile(STUFF);

    MyDC := GetDC(Self.Handle);
    MyBitmap := TBitmap.Create;
    try
      MyBitmap.LoadFromDevice(MyDC);
      MyBitmap.SaveToFile(STUFF);
    finally
      ReleaseDC(Self.Handle, MyDC);
      FreeAndNil(MyBitmap);
    end;


    //E_LHS,E_RHS,E_DEC : double;     //exponential background
    //I_PK, I_RMS, I_HT : double;     //interband transition as a Gaussian
    //G1_PK, G1_RMS, G1_HT : double;  //first plasmon peak as a Gaussian
    //G2_PK, G2_RMS, G2_HT : double;  //second plasmon peak as a Gaussian

    //LSQE : single; //least square error


    //now update the logfile, if required
    if CREATELOGFILE.checked=true then
    begin
       if not fileexists(LOGFILENAME) then
       begin
         Application.MessageBox('Logfile has not been set up yet','Error',MB_ICONEXCLAMATION+MB_OK);   //in case it was not previously defined
         exit;
       end;
       AssignFile(OUTSTUFF,LOGFILENAME);
      {$I-} //allow for own error trapping rather than system
      Append(OUTSTUFF);
      STUFF:=PREFIX; //file name of data file being processed
      str(E_LHS,STR1); STUFF:=STUFF+','+STR1;
      str(E_RHS,STR1); STUFF:=STUFF+','+STR1;
      str(E_DEC,STR1); STUFF:=STUFF+','+STR1;

      str(I_PK,STR1); STUFF:=STUFF+','+STR1;
      str(I_RMS,STR1); STUFF:=STUFF+','+STR1;
      str(I_HT,STR1); STUFF:=STUFF+','+STR1;

      str(G1_PK,STR1); STUFF:=STUFF+','+STR1;
      str(G1_RMS,STR1); STUFF:=STUFF+','+STR1;
      str(G1_HT,STR1); STUFF:=STUFF+','+STR1;

      str(G2_PK,STR1); STUFF:=STUFF+','+STR1;
      str(G2_RMS,STR1); STUFF:=STUFF+','+STR1;
      str(G2_HT,STR1); STUFF:=STUFF+','+STR1;

      str(LSQE,STR1); STUFF:=STUFF+','+STR1;

      for I:=1 to 4 do begin str(PEAK[I],STR1); STUFF:=STUFF+','+STR1; end;
      for I:=1 to 5 do begin str(INFLECT[I],STR1); STUFF:=STUFF+','+STR1; end;

      writeln(OUTSTUFF,STUFF);
      Closefile(OUTSTUFF);
    end;

end;

procedure TForm1.FIRST_GUESSClick(Sender: TObject);
begin
  if DATA_EXISTS then
  begin
    SUCCESSFUL:=true;
    COLLECT_OFF_SCREEN;
    if not SUCCESSFUL then exit;

    chart1.AxisList[0].range.max:=YMAX;
    DERIV2.clear;
    inflection_points.clear;
    inflection_points.ShowInlegend:=false;
    DERIV2.ShowInLegend:=false;
    Peak1.ShowInLegend:=true;
    if RadioButton9.Checked=true then Peak2.ShowInlegend:=true;
    background.ShowInlegend:=true;
    Interband.ShowInLegend:=true;
    Total.ShowinLegend:=true;

    chart1.axisList[0].grid.visible:=true;
    chart1.axisList[2].grid.visible:=false;
    ZERO_ARRAYS;

    CALC_MODEL;
    PLOT_MODEL;
    UPDATE_ERROR(CALC_LSD);

    CALC_INTERBAND;
    CALC_PEAK1;
    if RadioButton9.checked=true then CALC_PEAK2 else label47.caption:='peak 2 area (eV) = ------';
    ENABLE_EDITING;
    EXPORT_MODEL.enabled:=true;
  end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
    //Label19.visible:=true;
    //ReadFile.enabled:=false; why??
  //Export_File.enabled:=false;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
  STUFF : string;
  SKIP,RES : integer;

begin
  if DATA_EXISTS then
  begin
    STUFF:=Edit1.text;
    val(STUFF,SKIP,RES);
  end;
end;


procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  if RadioButton4.checked then DELIM:=' ';
end;

procedure TForm1.RadioButton5Change(Sender: TObject);
begin
  if RadioButton5.checked then DELIM:=',';
end;

procedure TForm1.RadioButton6Change(Sender: TObject);
begin
  if RadioButton6.checked then DELIM:=chr(9);
end;

procedure TForm1.RadioButton7Change(Sender: TObject);
begin
  if RadioButton7.checked then DELIM:=Edit4.text;
end;

procedure TForm1.RadioButton8Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.RadioButton9Change(Sender: TObject);
begin
  REDO_MODEL;
  if RadioButton9.checked then
  begin
    Label27.enabled:=true;
    Label32.enabled:=true;
    Label33.enabled:=true;
    Label34.enabled:=true;
    edit14.enabled:=true;
    edit15.enabled:=true;
    edit16.enabled:=true;
    checkbox10.enabled:=true;
    checkbox11.enabled:=true;
    checkbox12.enabled:=true;
  end
  else
  begin
     Label27.enabled:=false;
     Label32.enabled:=false;
     Label33.enabled:=false;
     Label34.enabled:=false;
     edit14.enabled:=false;
     edit15.enabled:=false;
     edit16.enabled:=false;
     checkbox10.enabled:=false;
     checkbox11.enabled:=false;
     checkbox12.enabled:=false;
  end;
end;


procedure TForm1.Edit5Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  REDO_MODEL;
end;
procedure TForm1.Edit7EditingDone(Sender: TObject);
//use EditingDone to avoid error message if balance of exponential expression has not been enetered yet
begin
  REDO_MODEL;
end;

procedure TForm1.Fit_modelChange(Sender: TObject);
begin
    inflection_points.ShowInlegend:=false;
    DERIV2.ShowInLegend:=false;
    Peak1.ShowInLegend:=true;
    if RadioButton9.Checked=true then Peak2.ShowInlegend:=true;
    background.ShowInlegend:=true;
    Interband.ShowInLegend:=true;
    Total.ShowinLegend:=true;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit11Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit12Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit14Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit15Change(Sender: TObject);
begin
  REDO_MODEL;
end;

procedure TForm1.Edit16Change(Sender: TObject);
begin
  REDO_MODEL;
end;


end.

