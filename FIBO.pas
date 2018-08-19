var
        f: text;
        n, i, ns, nsr: integer;
        sr: string;
        s, s1, s2: ansistring;
        dem: longint;

begin
        dem:=0;
        assign(f, 'FIBO.INP');
        reset(f);
        readln(f, n);
        readln(f, sr);
        close(f);

        if n = 0 then s:='A'
        else if n = 1 then s:='B'
        else
        begin
                s1:='A';
                s2:='B';
                for i:=2 to n do
                begin
                        s:=s1+s2;
                        s1:=s2;
                        s2:=s;
                end;
        end;

        ns:=length(s);
        nsr:=length(sr);

        for i:=1 to ns - nsr + 1do
        begin
                if copy(s, i, nsr) = sr then inc(dem);
        end;

        assign(f, 'FIBO.OUT');
        rewrite(f);
        write(f, dem);
        close(f);
end.