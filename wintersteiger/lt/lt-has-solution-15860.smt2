(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1540966934932015419690287671983242034912109375p941 {+ 693989811395008 941 (2.1452e+283)}
; Y = -1.9776347844565265177152468822896480560302734375p-427 {- 4402875650982848 -427 (-5.70608e-129)}
; 1.1540966934932015419690287671983242034912109375p941 < -1.9776347844565265177152468822896480560302734375p-427 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101100 #b0010011101110010111000011000001011111001100111000000)))
(assert (= y (fp #b1 #b01001010100 #b1111101001000110010001011111001010101100001111000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
