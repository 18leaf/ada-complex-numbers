package Complex_Numbers is

  type Complex is record
    Real, Imag : Float;
   end record;
  -- Complex Number to String
  function Image (C : Complex) return String;

  -- Declarations
  function Complex_Add (A : Complex; B : Complex)
    return  Complex;

end Complex_Numbers;
