(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3126981955840033577942449483089148998260498046875p1014 {+ 1408267477111544 1014 (2.30452e+305)}
; Y = 1.5626891195096199727032626469735987484455108642578125p-463 {+ 2534126508948957 -463 (6.56122e-140)}
; 1.3126981955840033577942449483089148998260498046875p1014 = 1.5626891195096199727032626469735987484455108642578125p-463 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110101 #b0101000000001100111111010010101110001101001011111000)))
(assert (= y (fp #b0 #b01000110000 #b1001000000001100011001001110011000011011110111011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
