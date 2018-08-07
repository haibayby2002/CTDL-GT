var
        f: text;
        s1, s2: string;
        l1, l2, i, j: integer;
        a: array[0..255, 0..255] of integer;

function Max(a, b: integer): integer;
begin
        if a > b then Max:=a else max:=b;
end;

begin
        assign(f, 'LCS.INP');
        reset(f);
        readln(f, s1);
        readln(f, s2);
        close(f);

        l1:=length(s1);
        l2:=length(s2);

        //Initialization
        for i:=0 to l1 do a[0, i]:=0;
        for i:=0 to l2 do a[j, 0]:=0;

        for i:=1 to l1 do
        begin
                for j:=1 to l2 do
                begin
                        if s1[i] = s2[j] then a[i, j]:=a[i-1, j-1] + 1
                        else
                        begin
                                a[i, j]:=Max(a[i-1,j], a[i,j-1]);
                        end;
                end;
        end;

        assign(f, 'LCS.out');
        rewrite(f);
        write(f, a[l1, l2]);
        close(f);
end.
