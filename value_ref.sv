module test();

    int a;

        task automatic pass_by_ref (ref int a);
            #5;
            a = a*2;
        endtask

        task pass_by_value (int a);
            #5;
            a = a*2;
        endtask

        initial
            begin
                a = 10;
                
                $display("value of a before pass_ref:%d",a);
                pass_by_ref(a);
                $display("value of a after pass_ref:%d",a);
                
                a=30;

                $display("value of a before pass_value:%d",a);
                pass_by_value(60);
                $display("value of a after pass_value:%d",a);

            end
endmodule
