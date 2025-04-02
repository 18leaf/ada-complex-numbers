with Ada.Text_IO;
use Ada.Text_IO;
with Complex_Numbers;
use Complex_Numbers;


procedure main is
  A : Complex;
  B : Complex;
  Result : Complex;

begin
  A.Real := 2.0;
  A.Imag := 2.0;

  B.Real := 3.0;
  B.Imag := 3.0;

  Result := Complex_Add (A, B);

  Put_Line (Image (Result));

end main;

