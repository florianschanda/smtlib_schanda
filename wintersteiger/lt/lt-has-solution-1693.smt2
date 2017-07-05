(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9288281580425057359917673238669522106647491455078125p-622 {- 4183070146451453 -622 (-1.10825e-187)}
; Y = -0.02569233253834912744650864624418318271636962890625p-1022 {- 115707979245988 -1023 (-5.71673e-310)}
; -1.9288281580425057359917673238669522106647491455078125p-622 < -0.02569233253834912744650864624418318271636962890625p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010001 #b1110110111000111101011101010001001100101011111111101)))
(assert (= y (fp #b1 #b00000000000 #b0000011010010011110001011101000000000010100110100100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
