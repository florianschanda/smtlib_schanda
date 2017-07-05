(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5419547612780128975629168053274042904376983642578125p-545 {+ 2440747260943325 -545 (1.33883e-164)}
; Y = 1.426358503889570084055549159529618918895721435546875p-268 {+ 1920147999243310 -268 (3.00739e-081)}
; 1.5419547612780128975629168053274042904376983642578125p-545 < 1.426358503889570084055549159529618918895721435546875p-268 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011110 #b1000101010111101100011000001011110011001101111011101)))
(assert (= y (fp #b0 #b01011110011 #b0110110100100101110101001011011010010011110000101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
