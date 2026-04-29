(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4450659058895654052179224891006015241146087646484375p574 {- 2004398647919559 574 (-8.93522e+172)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.4450659058895654052179224891006015241146087646484375p574 m +oo == -1.4450659058895654052179224891006015241146087646484375p574
; [HW: -1.4450659058895654052179224891006015241146087646484375p574] 

; mpf : - 2004398647919559 574
; mpfd: - 2004398647919559 574 (-8.93522e+172) class: Neg. norm. non-zero
; hwf : - 2004398647919559 574 (-8.93522e+172) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111101 #b0111000111101111110101101101011001011100001111000111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b11000111101 #b0111000111101111110101101101011001011100001111000111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
