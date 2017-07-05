(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.923591428255475133113350239000283181667327880859375p194 {+ 4159486012133942 194 (4.82983e+058)}
; Y = -1.8873586390212313546044242684729397296905517578125p832 {- 3996308036040008 832 (-5.40519e+250)}
; Z = 1.289280342120773692471402682713232934474945068359375p-194 {+ 1302802840980726 -194 (5.13486e-059)}
; 1.923591428255475133113350239000283181667327880859375p194 x -1.8873586390212313546044242684729397296905517578125p832 1.289280342120773692471402682713232934474945068359375p-194 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000001 #b1110110001110000011111001110001100111001001000110110)))
(assert (= y (fp #b1 #b11100111111 #b1110001100101001111011111000111001101011010101001000)))
(assert (= z (fp #b0 #b01100111101 #b0100101000001110010001101100100011001000110011110110)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
