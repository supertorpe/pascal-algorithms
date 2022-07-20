unit shellsort;

interface

  uses utils;

  procedure shell(var T: TArray);

implementation

  uses sysutils;

  procedure shell(var T: TArray);
  var
    n, gap, i, j, v: integer;
  begin
    n := length(T);
    gap := n div 2;
    while gap > 0 do
    begin
      for i := gap + 1 to n do
      begin
        v := T[i];
        j := i;
        while (j > gap) and (T[j-gap] > v) do
        begin
          T[j] := T[j-gap];
          dec(j, gap);
        end;
        T[j] := v;
      end;
      gap := gap div 2;
    end;
  end;

end.
