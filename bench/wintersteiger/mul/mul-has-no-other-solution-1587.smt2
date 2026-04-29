(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.807341187789643921490778666338883340358734130859375p-949 {+ 3635941472490294 -949 (3.79817e-286)}
; Y = 1.6870074298453385797103010190767236053943634033203125p-825 {+ 3094006405052229 -825 (7.53999e-249)}
; 1.807341187789643921490778666338883340358734130859375p-949 * 1.6870074298453385797103010190767236053943634033203125p-825 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001010 #b1100111010101101111010010111111001000101001100110110)))
(assert (= y (fp #b0 #b00011000110 #b1010111111011111101110000000101101001011011101000101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
