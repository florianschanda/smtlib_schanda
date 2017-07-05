(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.8693069076570518749491611742996610701084136962890625p-456 {+ 3915010265394897 -456 (1.00462e-137)}
; -zero = 1.8693069076570518749491611742996610701084136962890625p-456 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01000110111 #b1101111010001010111001011100001010010010111011010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
