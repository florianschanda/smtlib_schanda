(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7501481128757074845481156444293446838855743408203125p971 {- 3378366761619717 971 (-3.49302e+292)}
; Y = -1.198446282679110463931237973156385123729705810546875p-446 {- 893722604726702 -446 (-6.59539e-135)}
; -1.7501481128757074845481156444293446838855743408203125p971 > -1.198446282679110463931237973156385123729705810546875p-446 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001010 #b1100000000001001101101001110101111110101000100000101)))
(assert (= y (fp #b1 #b01001000001 #b0011001011001101011000000010011000011110100110101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
