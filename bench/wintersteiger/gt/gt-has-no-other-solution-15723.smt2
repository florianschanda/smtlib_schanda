(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1314158559177267537876332426094450056552886962890625p105 {+ 591844399741649 105 (4.58957e+031)}
; Y = -1.5581447879516858723292216382105834782123565673828125p141 {- 2513660659037997 141 (-4.34347e+042)}
; 1.1314158559177267537876332426094450056552886962890625p105 > -1.5581447879516858723292216382105834782123565673828125p141 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101000 #b0010000110100100011110000011001101010111101011010001)))
(assert (= y (fp #b1 #b10010001100 #b1000111011100010100100111010101010101111011100101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
