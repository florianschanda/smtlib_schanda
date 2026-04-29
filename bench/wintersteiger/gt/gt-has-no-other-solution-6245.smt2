(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7418342900699010922238585408194921910762786865234375p-679 {- 3340924632329463 -679 (-6.94448e-205)}
; Y = 1.3779383419238293573272358116810210049152374267578125p565 {+ 1702082975857181 565 (1.66409e+170)}
; -1.7418342900699010922238585408194921910762786865234375p-679 > 1.3779383419238293573272358116810210049152374267578125p565 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011000 #b1011110111101000110110100001111011100110110011110111)))
(assert (= y (fp #b0 #b11000110100 #b0110000011000000100100010011001001110111101000011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
