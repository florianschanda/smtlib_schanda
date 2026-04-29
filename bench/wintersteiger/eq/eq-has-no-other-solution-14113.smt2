(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.845593000116881210459496287512592971324920654296875p438 {+ 3808212320233486 438 (1.31001e+132)}
; Y = 1.0814624424494605481328335372381843626499176025390625p878 {+ 366874225460081 878 (2.17945e+264)}
; 1.845593000116881210459496287512592971324920654296875p438 = 1.0814624424494605481328335372381843626499176025390625p878 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110101 #b1101100001111000110010000110100100111010100000001110)))
(assert (= y (fp #b0 #b11101101101 #b0001010011011010101110001111111000101100001101110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
