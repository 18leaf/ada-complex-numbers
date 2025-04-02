with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

package body Complex_Numbers is
  
  -- Image for Complex_Numbers
  function Image (C : Complex) return String is
  begin
    return "(" & Float'Image (C.Real) & " + " & Float'Image (C.Imag) & "i)";
  end Image;

  -- Init Result
  Result : Complex;

  function Complex_Add
    (A : Complex; B : Complex) return Complex is
  begin
    -- add Real Parts of Complex A and B and Assign to Real
    Result.Real := A.Real + B.Real;
    Result.Imag := A.Imag + B.Imag;
    
    return Result;
  end Complex_Add;

end Complex_Numbers;
