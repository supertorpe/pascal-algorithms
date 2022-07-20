unit utils;

interface

type TArray = array[1..10] of integer;
type TSortingProcedure = procedure(var T: TArray);
procedure disorderList(var T: TArray);
procedure writeList(var T: TArray);
procedure executeSortingAlg(title: string; proc: TSortingProcedure);

implementation

procedure disorderList(var T: TArray);
var i: integer;
begin
  i := 1;

  T[i] :=  10; Inc(i);
  T[i] :=  9; Inc(i);
  T[i] :=  8; Inc(i);
  T[i] :=  7; Inc(i);
  T[i] :=  6; Inc(i);
  T[i] :=  5; Inc(i);
  T[i] :=  4; Inc(i);
  T[i] :=  3; Inc(i);
  T[i] :=  2; Inc(i);
  T[i] :=  1; Inc(i);
  
  (*
  T[i] :=  5; Inc(i);
  T[i] :=  4; Inc(i);
  T[i] :=  3; Inc(i);
  T[i] :=  2; Inc(i);
  *)
end;

procedure writeList(var T: TArray);
var
  i: integer;
begin
  for i := low(T) to high(T) do
  begin
    write(T[i]);
    if (i < high(T)) then write(',');
  end;
  writeLn();
end;

procedure executeSortingAlg(title: string; proc: TSortingProcedure);
var
  T: TArray;
begin
  writeLn(title);
  disorderList(T);
  writeList(T);
  proc(T);
  writeList(T);
end;

end.