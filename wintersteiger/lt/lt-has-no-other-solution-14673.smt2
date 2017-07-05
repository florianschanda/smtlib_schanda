(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2804483906741934706730035031796433031558990478515625p876 {+ 1263027267736953 876 (6.45117e+263)}
; Y = 1.9881453874601804354682599296211265027523040771484375p-708 {+ 4450211198753543 -708 (1.47642e-213)}
; 1.2804483906741934706730035031796433031558990478515625p876 < 1.9881453874601804354682599296211265027523040771484375p-708 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101011 #b0100011111001011011101110011101000101001010101111001)))
(assert (= y (fp #b0 #b00100111011 #b1111110011110111000110001001101011010101101100000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
