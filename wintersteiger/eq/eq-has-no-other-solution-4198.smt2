(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.0057306744772251949626706846174784004688262939453125p-1022 {+ 25808663440213 -1023 (1.27512e-310)}
; Y = 1.1692527579644595991936739665106870234012603759765625p-78 {+ 762246657700169 -78 (3.86873e-024)}
; 0.0057306744772251949626706846174784004688262939453125p-1022 = 1.1692527579644595991936739665106870234012603759765625p-78 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000101110111100100001100001101110110101101010101)))
(assert (= y (fp #b0 #b01110110001 #b0010101101010100001001100001010000110111000101001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
