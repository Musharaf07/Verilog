// Memory Program with given specification
//Memory Size 8*14
//Task/Function to fill a element in memory
//Method to "clear" to erase memory
//Add values stored inside the memory
//Method to find Largest Number in memory
module memory_program;
  reg [13:0] mem [0:7];  //8*14
    integer i;
    reg [13:0] sum;
    reg [13:0] max;

  task fill_memory;
        begin
            for (i = 0; i < 8; i = i + 1)
              mem[i] = i * 5 + 5;
        end
    endtask

    task clear_memory;
        begin
            for (i = 0; i < 8; i = i + 1)
                mem[i] = 14'b0;
        end
    endtask

  function [13:0] add_all;
        begin
            add_all = 0;
            for (i = 0; i < 8; i = i + 1)
                add_all = add_all + mem[i];
        end
    endfunction

    function [13:0] find_max;
        reg [13:0] temp_max;
        begin
            temp_max = mem[0];
            for (i = 1; i < 8; i = i + 1)
                if (mem[i] > temp_max)
                    temp_max = mem[i];
            find_max = temp_max;
        end
    endfunction

    initial begin
      $display("Filling Memory :");
        fill_memory();
        for (i = 0; i < 8; i = i + 1)
            $display("mem[%0d] = %0d", i, mem[i]);

      $display("Summing Memory :");
        sum = add_all();
      $display("Sum of all memory elements: %0d", sum);

      $display("Finding Max :");
        max = find_max();
      $display(" Maximum value in memory: %0d ", max);

      $display("Clearing Memory :");
        clear_memory();
        for (i = 0; i < 8; i = i + 1)
            $display("mem[%0d] = %0d", i, mem[i]);
    end
endmodule
