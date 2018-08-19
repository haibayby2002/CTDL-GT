var
        f: text;
        c: char;
        dem: integer;

begin
        dem:=0;
        assign(f, 'SOLUONG.INP');
        reset(f);
        while not eof(f) do
        begin
                read(f, c);
                if c = 'A' then inc(dem);
        end;
        close(f);

        assign(f, 'SOLUONG.OUT');
        rewrite(f);
        write(f, dem);
        close(f);
end.