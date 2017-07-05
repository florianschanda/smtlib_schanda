(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.589901752070766338675866791163571178913116455078125p239 {+ 2656681310811106 239 (1.40456e+072)}
; Y = 1.203489646500918386351486333296634256839752197265625p740 {+ 916435896155290 740 (6.96048e+222)}
; 1.589901752070766338675866791163571178913116455078125p239 = 1.203489646500918386351486333296634256839752197265625p740 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101110 #b1001011100000011110011010001110011111111001111100010)))
(assert (= y (fp #b0 #b11011100011 #b0011010000010111111001011100000011001011110010011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
