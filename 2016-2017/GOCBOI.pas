var
        f: text;
        n, temp: longint;

begin
        assign(f, 'GOCBOI.INP');
        reset(f);
        read(f, n);
        close(f);

        while n >= 10 do
        begin
                temp:=1;
                while n <> 0 do
                begin
                        temp := temp * (n mod 10);
                        n := n div 10;
                end;
                n:=temp;
        end;

        assign(f, 'GOCBOI.OUT');
        rewrite(f);
        write(f, n);
        close(f);
end.