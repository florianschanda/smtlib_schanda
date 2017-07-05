(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.55981299017868568768108161748386919498443603515625p-423 {- 2521173573965892 -423 (-7.20086e-128)}
; Y = -1.529741355723562623580846775439567863941192626953125p-906 {- 2385742972239378 -906 (-2.82776e-273)}
; -1.55981299017868568768108161748386919498443603515625p-423 * -1.529741355723562623580846775439567863941192626953125p-906 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011000 #b1000111101001111111001110111010010110001100001000100)))
(assert (= y (fp #b1 #b00001110101 #b1000011110011101001000010010011000101011111000010010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
