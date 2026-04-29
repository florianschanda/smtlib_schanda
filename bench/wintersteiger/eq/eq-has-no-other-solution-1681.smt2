(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.106011641727938421553290027077309787273406982421875p-311 {+ 477433990182878 -311 (2.65113e-094)}
; Y = 1.6625520170997669655577055891626514494419097900390625p375 {+ 2983869017324081 375 (1.27945e+113)}
; 1.106011641727938421553290027077309787273406982421875p-311 = 1.6625520170997669655577055891626514494419097900390625p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001000 #b0001101100100011100101000011011000110111011111011110)))
(assert (= y (fp #b0 #b10101110110 #b1010100110011101000000100100110101010111101000110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
