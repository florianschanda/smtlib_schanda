(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.809377045470407896488040933036245405673980712890625p556 {+ 3645110160382762 556 (4.26783e+167)}
; Y = 1.605819837950653639069287237362004816532135009765625p-314 {+ 2728369996448218 -314 (4.81147e-095)}
; 1.809377045470407896488040933036245405673980712890625p556 < 1.605819837950653639069287237362004816532135009765625p-314 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101011 #b1100111100110011010101011000010001101101101100101010)))
(assert (= y (fp #b0 #b01011000101 #b1001101100010111000000100100011101000100000111011010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
