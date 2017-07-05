(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1625520764893548797402900163433514535427093505859375p451 {- 732069471105759 451 (-6.7599e+135)}
; Y = 1.247979884466620337235553961363621056079864501953125p416 {+ 1116802115279250 416 (2.11196e+125)}
; -1.1625520764893548797402900163433514535427093505859375p451 = 1.247979884466620337235553961363621056079864501953125p416 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111000010 #b0010100110011101000000110100110001101011001011011111)))
(assert (= y (fp #b0 #b10110011111 #b0011111101111011100111000001010111011001100110010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
