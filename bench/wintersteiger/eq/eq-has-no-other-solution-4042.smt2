(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9780938998616084401049874941236339509487152099609375p259 {+ 4404943322950095 259 (1.83238e+078)}
; Y = -1.5728884795751956193754494961467571556568145751953125p50 {- 2580060343139701 50 (-1.77091e+015)}
; 1.9780938998616084401049874941236339509487152099609375p259 = -1.5728884795751956193754494961467571556568145751953125p50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000010 #b1111101001100100010111001010000001010010100111001111)))
(assert (= y (fp #b1 #b10000110001 #b1001001010101000110100011100010000000111110101110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
