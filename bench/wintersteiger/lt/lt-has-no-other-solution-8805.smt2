(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5649860091575458209689486466231755912303924560546875p-917 {- 2544470780311467 -917 (-1.41255e-276)}
; Y = 1.03241983038629481228554141125641763210296630859375p38 {+ 146005936047132 38 (2.83789e+011)}
; -1.5649860091575458209689486466231755912303924560546875p-917 < 1.03241983038629481228554141125641763210296630859375p38 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101010 #b1001000010100010111011000101000000000111011110101011)))
(assert (= y (fp #b0 #b10000100101 #b0000100001001100101010100111111101000000010000011100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
