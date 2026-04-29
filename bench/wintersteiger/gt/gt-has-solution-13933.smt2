(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.601197109811068219897833841969259083271026611328125p-658 {+ 2707551079721346 -658 (1.33878e-198)}
; Y = 1.22314958469548873409848965820856392383575439453125p539 {+ 1004976386482484 539 (2.20114e+162)}
; 1.601197109811068219897833841969259083271026611328125p-658 > 1.22314958469548873409848965820856392383575439453125p539 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101101 #b1001100111101000000011011100010100010110100110000010)))
(assert (= y (fp #b0 #b11000011010 #b0011100100100000010101001100100001100010000100110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
