var
        f: text;
        n, x, dem, i: longint;

function TinhTongUoc(n: longint): longint;
var
        i: longint;
begin
        TinhTongUoc:=1;
        if n > 1 then
        begin
                for i:=2 to trunc(sqrt(n)) do
                begin
                        if n mod i = 0 then
                        begin
                                TinhTongUoc:=TinhTongUoc + i;
                                TinhTongUoc:=TinhTongUoc + (n div i);
                        end;
                end;
                if sqrt(n) = trunc(sqrt(n)) then TinhTongUoc:=TinhTongUoc - trunc(sqrt(n));
        end;
end;

begin
        dem:=0;
        assign(f, 'GEN.INP');
        reset(f);
        readln(f, n);
        for i:=1 to n do
        begin
                read(f, x);
                if TinhTongUoc(x) < x then inc(dem);
        end;
        close(f);

        assign(f, 'GEN.OUT');
        rewrite(f);
        write(f, dem);
        close(f);
end.