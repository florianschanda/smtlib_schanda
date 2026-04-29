(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.790751030341272365120630638557486236095428466796875p-779 {- 3561226045587790 -779 (-5.63208e-235)}
; Y = 1.4672637056716431036562653389410115778446197509765625p720 {+ 2104368650746569 720 (8.09292e+216)}
; -1.790751030341272365120630638557486236095428466796875p-779 > 1.4672637056716431036562653389410115778446197509765625p720 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110100 #b1100101001101110101010001101011010011000000101001110)))
(assert (= y (fp #b0 #b11011001111 #b0111011110011110100110000001111001110111101011001001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
