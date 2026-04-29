(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7464672038185786728803350342786870896816253662109375p-713 {- 3361789420961647 -713 (-4.05297e-215)}
; Y = +zero {+ 0 -1023 (0)}
; -1.7464672038185786728803350342786870896816253662109375p-713 - +zero == -1.7464672038185786728803350342786870896816253662109375p-713
; [HW: -1.7464672038185786728803350342786870896816253662109375p-713] 

; mpf : - 3361789420961647 -713
; mpfd: - 3361789420961647 -713 (-4.05297e-215) class: Neg. norm. non-zero
; hwf : - 3361789420961647 -713 (-4.05297e-215) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100110110 #b1011111100011000011110011000001111101111111101101111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00100110110 #b1011111100011000011110011000001111101111111101101111)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
