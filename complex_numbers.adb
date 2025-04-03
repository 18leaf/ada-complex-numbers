with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

package body Complex_Numbers is
  
  -- Image for Complex_Numbers
  function Image 
    (C : Complex) 
    return String is
  begin
    return "(" & Float'Image (C.Real) & " + " & Float'Image (C.Imag) & "i)";
  end Image;

  -- Init Result
  Result : Complex;

  function Complex_Add
    (A : Complex; B : Complex) 
    return Complex is
  begin
    -- add Real Parts of Complex A and B and Assign to Real
    Result.Real := A.Real + B.Real;
    Result.Imag := A.Imag + B.Imag;
    
    return Result;
  end Complex_Add;

  function Complex_Subtract
    (A : Complex; B : Complex)
    return Complex is
  begin
    Result.Real := A.Real - B.Real;
    Result.Imag := A.Imag - B.Imag;
   
    return Result;
  end Complex_Subtract;

  
  function Complex_Multiply
    (A : Complex; B : Complex)
    return Complex is
  begin
    Result.Real := (A.Real * B.Real) - (A.Imag * B.Imag);
    Result.Imag := (A.Real * B.Imag) + (A.Imag * B.Real);
    return Result;
  end Complex_Multiply;


  function Complex_Divide
    (A : Complex; B : Complex)
    return Complex is
  begin
    -- (ac + bd) / (c^2 + d^2)
    Result.Real := ((A.Real * B.Real) + (A.Imag * B.Imag)) / ((B.Real * B.Real) + (B.Imag * B.Imag));
    Result.Imag := ((A.Imag * B.Real) - (A.Real * B.Imag)) / ((B.Real * B.Real) + (B.Imag * B.Imag));
    return Result;
  end Complex_Divide;

  end Complex_Numbers;
