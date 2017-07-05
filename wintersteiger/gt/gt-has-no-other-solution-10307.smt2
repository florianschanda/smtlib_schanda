(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3193663388228438204663461874588392674922943115234375p-496 {+ 1438298124517239 -496 (6.44893e-150)}
; Y = 1.2789948412518563625184242482646368443965911865234375p730 {+ 1256481063100151 730 (7.2238e+219)}
; 1.3193663388228438204663461874588392674922943115234375p-496 > 1.2789948412518563625184242482646368443965911865234375p730 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001111 #b0101000111000001111111100000110010101111111101110111)))
(assert (= y (fp #b0 #b11011011001 #b0100011101101100001101001011011011101101111011110111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
