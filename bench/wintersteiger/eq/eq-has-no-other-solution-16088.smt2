(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.797374735041187054918054855079390108585357666015625p979 {+ 3591056559606138 979 (9.18342e+294)}
; Y = -1.5048656286024553185853847026010043919086456298828125p737 {- 2273712656846189 737 (-1.08794e+222)}
; 1.797374735041187054918054855079390108585357666015625p979 = -1.5048656286024553185853847026010043919086456298828125p737 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010010 #b1100110000100000110000000010100110101000100101111010)))
(assert (= y (fp #b1 #b11011100000 #b1000000100111110110111111011001110111000110101101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
