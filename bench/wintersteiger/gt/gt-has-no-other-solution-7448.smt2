(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.851370475999579046089138500974513590335845947265625p375 {+ 3834231758465946 375 (1.42476e+113)}
; +zero > 1.851370475999579046089138500974513590335845947265625p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10101110110 #b1101100111110011011010100101111100110010101110011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
