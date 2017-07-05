(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.766750107958558135834437052835710346698760986328125p229 {+ 3453135500488450 229 (1.52421e+069)}
; 1.766750107958558135834437052835710346698760986328125p229 | == 1.766750107958558135834437052835710346698760986328125p229
; [HW: 1.766750107958558135834437052835710346698760986328125p229] 

; mpf : + 3453135500488450 229
; mpfd: + 3453135500488450 229 (1.52421e+069) class: Pos. norm. non-zero
; hwf : + 3453135500488450 229 (1.52421e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100100 #b1100010001001001101111000010110111100010111100000010)))
(assert (= r (fp #b0 #b10011100100 #b1100010001001001101111000010110111100010111100000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
