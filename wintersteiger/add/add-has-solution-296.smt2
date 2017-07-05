(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2021089534836131296202665907912887632846832275390625p-227 {- 910217807597041 -227 (-5.57359e-069)}
; Y = -1.958814089849824302547176557709462940692901611328125p-515 {- 4318114777765250 -515 (-1.82619e-155)}
; -1.2021089534836131296202665907912887632846832275390625p-227 + -1.958814089849824302547176557709462940692901611328125p-515 == -1.2021089534836131296202665907912887632846832275390625p-227
; [HW: -1.2021089534836131296202665907912887632846832275390625p-227] 

; mpf : - 910217807597041 -227
; mpfd: - 910217807597041 -227 (-5.57359e-069) class: Neg. norm. non-zero
; hwf : - 910217807597041 -227 (-5.57359e-069) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100011100 #b0011001110111101011010011001000101110000110111110001)))
(assert (= y (fp #b1 #b00111111100 #b1111010101110100110101110001011011011001010110000010)))
(assert (= r (fp #b1 #b01100011100 #b0011001110111101011010011001000101110000110111110001)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
