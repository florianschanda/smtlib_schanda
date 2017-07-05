(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0477255079726541797668915023677982389926910400390625p-997 {+ 214936579921713 -997 (7.82243e-301)}
; Y = 1.13794874142560598073714572819881141185760498046875p-865 {+ 621265900480588 -865 (4.62569e-261)}
; 1.0477255079726541797668915023677982389926910400390625p-997 > 1.13794874142560598073714572819881141185760498046875p-865 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011010 #b0000110000110111101111010010011111101101011100110001)))
(assert (= y (fp #b0 #b00010011110 #b0010001101010000100110111101010011110010100001001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
