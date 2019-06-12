unit Charts.Labelling;

interface

uses
  Classes, Interfaces;

Type
  TChartsLabelling<T : IInterface> = class(TInterfacedObject, iModelLabellingConfig<T>)
    private
      FParent : T;
      FFormat : String;
      FAction : String;
      FResult : String;
      FRGBColor : String;
      FFontSize : Integer;
      FFontStyle : String;
      FFontFamily : String;
      FPadding : Integer;
    public
      constructor Create(Parent : T);
      destructor Destroy; override;
      class function New(Parent : T) : iModelLabellingConfig<T>;
      function Result : String;
      function Format ( Value : String) : iModelLabellingConfig<T>; overload;
      function Format : String; overload;
      function RGBColor ( Value : String ) : iModelLabellingConfig<T>; overload;
      function RGBColor : String; overload;
      function FontSize ( Value : Integer) : iModelLabellingConfig<T>; overload;
      function FontSize : Integer; overload;
      function FontStyle (Value : String) : iModelLabellingConfig<T>; overload;
      function FontStyle : String; overload;
      function FontFamily (Value : String) : iModelLabellingConfig<T>; overload;
      function FontFamily : String; overload;
      function Padding (Value : Integer) : iModelLabellingConfig<T>; overload;
      function Padding : Integer; overload;
      function &End : T;

  end;

implementation

uses
  Charts.Config, System.SysUtils, Injection;


{ TChartsLabelling }

function TChartsLabelling<T>.&End: T;
begin
  Result := FParent;
end;

constructor TChartsLabelling<T>.Create(Parent : T);
begin
  {$IF RTLVERSION > 27  }
    TInjection.Weak(@FParent, Parent);
  {$ELSE}
    FParent := Parent;
  {$IFEND}
  FFormat :='';
  FRGBColor := '133, 133, 133';
  FFontSize := 12;
  FFontStyle := 'normal';
  FFontFamily := 'Open Sans';
  FPadding := 5;
end;

destructor TChartsLabelling<T>.Destroy;
begin

  inherited;
end;

function TChartsLabelling<T>.FontFamily(
  Value: String): iModelLabellingConfig<T>;
begin
  Result := Self;
  FFontFamily := Value;
end;

function TChartsLabelling<T>.FontFamily: String;
begin
  Result := FFontFamily;
end;

function TChartsLabelling<T>.FontSize(Value: Integer): iModelLabellingConfig<T>;
begin
  Result := Self;
  FFontSize := Value;
end;

function TChartsLabelling<T>.FontSize: Integer;
begin
  Result := FFontSize;
end;

function TChartsLabelling<T>.FontStyle(Value: String): iModelLabellingConfig<T>;
begin
  Result := Self;
  FFontStyle := Value;
end;

function TChartsLabelling<T>.FontStyle: String;
begin
  Result := FFontStyle;
end;

function TChartsLabelling<T>.Format: String;
begin
  Result := FFormat;
end;

function TChartsLabelling<T>.Format(Value: String): iModelLabellingConfig<T>;
begin
  Result := Self;
  FFormat := Value;
  FAction := 'numeral.locale(''pt-br''); var dataString = numeral(dataset.data[index].toString()).format('+QuotedStr(FFormat)+');';
end;

class function TChartsLabelling<T>.New(Parent : T): iModelLabellingConfig<T>;
begin
  Result := Self.Create(Parent);
end;

function TChartsLabelling<T>.Padding(Value: Integer): iModelLabellingConfig<T>;
begin
  Result := Self;
  FPadding := Value;
end;

function TChartsLabelling<T>.Padding: Integer;
begin
  Result := FPadding;
end;

function TChartsLabelling<T>.Result: String;
begin
  FResult := '';
  if FFormat <> '' then
  begin
    FResult := FResult + 'Chart.plugins.register({' ;
    FResult := FResult + 'afterDatasetsDraw: function(chart) { ';
    FResult := FResult + 'var ctx = chart.ctx;';
    FResult := FResult + '';
    FResult := FResult + 'chart.data.datasets.forEach(function(dataset, i) { ';
    FResult := FResult + 'var meta = chart.getDatasetMeta(i); ';
    FResult := FResult + 'if (!meta.hidden) { ';
    FResult := FResult + 'meta.data.forEach(function(element, index) { ';
    FResult := FResult + 'ctx.fillStyle = ''rgb('+FRGBColor+')''; ';
    FResult := FResult + '';
    FResult := FResult + 'var fontSize = '+IntToStr(FFontSize)+'; ';
    FResult := FResult + 'var fontStyle = '''+FFontStyle+'''; ';
    FResult := FResult + 'var fontFamily = '''+FFontFamily+'''; ';
    FResult := FResult + 'ctx.font = Chart.helpers.fontString(fontSize, fontStyle, fontFamily); ';
    FResult := FResult + '';
    if FFormat<>'' then
      FResult := FResult + FAction
    else
      FResult := FResult + 'var dataString = dataset.data[index].toString();';
    FResult := FResult + '';
    FResult := FResult + 'ctx.textAlign = ''center''; ';
    FResult := FResult + 'ctx.textBaseline = ''middle''; ';
    FResult := FResult + '';
    FResult := FResult + 'var padding = '+IntToStr(FPadding)+'; ';
    FResult := FResult + 'var position = element.tooltipPosition(); ';
    FResult := FResult + 'ctx.fillText(dataString, position.x, position.y - (fontSize / 2) - padding); ';
    FResult := FResult + '});';
    FResult := FResult + '}';
    FResult := FResult + '});';
    FResult := FResult + '}';
    FResult := FResult + '});';
    Result := FResult;
  end;

end;

function TChartsLabelling<T>.RGBColor(Value: String): iModelLabellingConfig<T>;
begin
  Result := Self;
  FRGBColor := Value;
end;

function TChartsLabelling<T>.RGBColor: String;
begin
  Result := FRGBColor;
end;

end.
