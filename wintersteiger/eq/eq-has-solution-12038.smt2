(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.016852702519424500593459015362896025180816650390625p-791 {- 75897824786666 -791 (-7.80785e-239)}
; Y = 1.473408269694882033462590698036365211009979248046875p-654 {+ 2132041306991982 -654 (1.97109e-197)}
; -1.016852702519424500593459015362896025180816650390625p-791 = 1.473408269694882033462590698036365211009979248046875p-654 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101000 #b0000010001010000011101010110111000101011100011101010)))
(assert (= y (fp #b0 #b00101110001 #b0111100100110001010010001100101111111110110101101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
