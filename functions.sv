module test();

    int a,b,c;

        function void sum(input int a,b,output int c);
            c = a*b;
        endfunction

        function int sum2(input int a,b);
            sum2 = a-b;
        endfunction

        function void sum3(input int a=10,b=5);
            int z;
            z = a-b;
            $display("from sum3 %d:",z);
        endfunction

        function int sum4(input int a,b,output int c);
                c = a+b+5;
                return(a+b);
        endfunction


        initial
            begin
                a =20;
                b = 30;
                    sum(a,b,c);

                    $display("from sum %d:",c);
                    c = sum2(a,b);
                    $display("from sum2 %d:",c);
                    sum3();
                    $display("from sum4 %d:",sum4(a,b,c));

             end
endmodule
                
