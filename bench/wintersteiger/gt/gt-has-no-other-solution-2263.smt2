(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6518652999634950706564495703787542879581451416015625p147 {- 2935740322011353 147 (-2.94703e+044)}
; Y = 1.04485785849563672655904156272299587726593017578125p230 {+ 202021834805588 230 (1.80284e+069)}
; -1.6518652999634950706564495703787542879581451416015625p147 > 1.04485785849563672655904156272299587726593017578125p230 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010010 #b1010011011100000101001001111000010111101100011011001)))
(assert (= y (fp #b0 #b10011100101 #b0000101101111011110011011111101100110101000101010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
