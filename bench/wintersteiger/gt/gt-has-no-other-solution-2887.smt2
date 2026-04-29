(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7361445607748564601280349961598403751850128173828125p-369 {+ 3315300369596461 -369 (1.44383e-111)}
; Y = 1.85433835240172495417709797038696706295013427734375p-705 {+ 3847597885524732 -705 (1.10165e-212)}
; 1.7361445607748564601280349961598403751850128173828125p-369 > 1.85433835240172495417709797038696706295013427734375p-705 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001110 #b1011110001110011111110000100110110101000000000101101)))
(assert (= y (fp #b0 #b00100111110 #b1101101010110101111010110001001101001000101011111100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
