(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3591372172289284403490228214650414884090423583984375p1002 {- 1617410237687079 1002 (-5.82531e+301)}
; Y = 1.8957301959252441658776433541788719594478607177734375p-353 {+ 4034010176593431 -353 (1.03321e-106)}
; -1.3591372172289284403490228214650414884090423583984375p1002 / 1.8957301959252441658776433541788719594478607177734375p-353 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101001 #b0101101111110000011010101010101011000110010100100111)))
(assert (= y (fp #b0 #b01010011110 #b1110010101001110100100101111100110001001111000010111)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
