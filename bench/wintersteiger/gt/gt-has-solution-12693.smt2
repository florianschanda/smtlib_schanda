(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.36381288248643084415334669756703078746795654296875p-614 {- 1638467561998476 -614 (-2.00603e-185)}
; Y = 1.730363703498149607895584267680533230304718017578125p457 {+ 3289265702919202 457 (6.4394e+137)}
; -1.36381288248643084415334669756703078746795654296875p-614 > 1.730363703498149607895584267680533230304718017578125p457 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011001 #b0101110100100010110101110101000000100100100010001100)))
(assert (= y (fp #b0 #b10111001000 #b1011101011111001000111011001110010110101110000100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
