with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;
with Complex_Numbers;
use Complex_Numbers;


procedure main is

  A : Complex;
  B : Complex;
  Result : Complex;
  Choice : Integer := 0;

  procedure Read_Complex_Number (C : out Complex) is 
  begin
    Put_Line ("Enter Real Part of Complex Number");
    Get(C.Real);
    Put_Line ("Enter Imaginary Pary");
    Get(C.Imag);
  end Read_Complex_Number;
  
  procedure Read_Choice (C : out Integer) is
  begin
    Put_Line ("1 - Add, 2 - Sub, 3 - Mult, 4 - Div, Other - Exit");
    Get (C);
  end Read_Choice;

begin
  
  while Choice > -1 loop
    
    Read_Complex_Number (A);
    Put_Line (Image (A));
    Read_Complex_Number (B);
    Put_Line (Image (B));
    
    Read_Choice (Choice);
    
    case Choice is
      when 1 =>
        Result := Complex_Add (A, B);
      when 2 =>
        Result := Complex_Subtract (A, B);
      when 3 =>
        Result := Complex_Multiply (A, B);
      when 4 =>
        Result := Complex_Divide (A, B);
      when others =>
        Put_Line ("Invalid Option or Exiting");
        return;
    end case;

    Put_Line ("Result: " & Image (Result));
  end loop;  
  
end main;



