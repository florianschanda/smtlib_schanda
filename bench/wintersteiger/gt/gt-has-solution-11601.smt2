(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.807823317366514803694599322625435888767242431640625p-464 {- 3638112791073034 -464 (-3.79523e-140)}
; Y = 1.722587632522028844306305472855456173419952392578125p-587 {+ 3254245392568738 -587 (3.40074e-177)}
; -1.807823317366514803694599322625435888767242431640625p-464 > 1.722587632522028844306305472855456173419952392578125p-587 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101111 #b1100111011001101100000100100100100001001000100001010)))
(assert (= y (fp #b0 #b00110110100 #b1011100011111011100000001100101000101101000110100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
