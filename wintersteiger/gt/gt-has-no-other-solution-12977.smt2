(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9997850074997323144287975082988850772380828857421875p-122 {+ 4502631387226403 -122 (3.76118e-037)}
; Y = 1.313703990049877035062309005297720432281494140625p959 {+ 1412797172693264 959 (6.40123e+288)}
; 1.9997850074997323144287975082988850772380828857421875p-122 > 1.313703990049877035062309005297720432281494140625p959 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000101 #b1111111111110001111010010000011000111110000100100011)))
(assert (= y (fp #b0 #b11110111110 #b0101000001001110111001111001100111100011100100010000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
