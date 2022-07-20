unit selectionsort;

interface

  uses utils;

  procedure selection(var T: TArray);

implementation

  procedure selection(var T: TArray);
  var
    i, j, min, minVal: integer;
  begin
    for i := low(T) to high(T)-1 do
    begin
      min := i;
      minVal := T[i];
      for j := i + 1 to high(T) do
      begin
        if (T[j] < minVal) then { T[j] > minVal for reverse order }
        begin;
          min := j;
          minVal := T[j];
        end;
      end;
      if (min <> i) then
      begin
        T[min] := T[i];
        T[i] := minVal;
      end;
    end;
  end;

end.
