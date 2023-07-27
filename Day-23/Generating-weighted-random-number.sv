/*			Generating weighted random number			*/
module random_number;
  bit a;
  initial
    begin
      repeat(4)
        begin
          assert(randomize(a) with { a dist {0 := 4,1 :=6}; });
          $display("========================");
          $display("value of a == %0d",a);
          $display("========================");
        end
    end
endmodule