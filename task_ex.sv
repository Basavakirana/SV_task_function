module task_ex();

    task automatic double (int a,string s);
        #5;
        a = a*2;
        $display($time,"a=%d,s=%s",a,s);
    endtask

    initial
        begin
            fork
                begin
                    double(5,"from class 1 :");
                end

                begin
                    #2;
                    double(4,"from class 2 :");
                end
            join
        end
endmodule
