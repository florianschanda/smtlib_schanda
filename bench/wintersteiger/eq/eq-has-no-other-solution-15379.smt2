(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1634278077412005814039730466902256011962890625p45 {+ 736013414045248 45 (4.09345e+013)}
; Y = 1.97869160340179117696379762492142617702484130859375p-220 {+ 4407635140390940 -220 (1.1743e-066)}
; 1.1634278077412005814039730466902256011962890625p45 = 1.97869160340179117696379762492142617702484130859375p-220 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101100 #b0010100111010110011001111010000110000001011001000000)))
(assert (= y (fp #b0 #b01100100011 #b1111101010001011100010000110110101111011000000011100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
