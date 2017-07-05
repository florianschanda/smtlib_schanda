(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.511331836712271670108975740731693804264068603515625p-910 {- 2302833869280058 -910 (-1.74608e-274)}
; Y = 1.0322888408276948979391818284057080745697021484375p-156 {+ 145416011519832 -156 (1.13011e-047)}
; -1.511331836712271670108975740731693804264068603515625p-910 m 1.0322888408276948979391818284057080745697021484375p-156 == -1.511331836712271670108975740731693804264068603515625p-910
; [HW: -1.511331836712271670108975740731693804264068603515625p-910] 

; mpf : - 2302833869280058 -910
; mpfd: - 2302833869280058 -910 (-1.74608e-274) class: Neg. norm. non-zero
; hwf : - 2302833869280058 -910 (-1.74608e-274) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110001 #b1000001011100110101001001010110000010101001100111010)))
(assert (= y (fp #b0 #b01101100011 #b0000100001000100000101001101101101100001011101011000)))
(assert (= r (fp #b1 #b00001110001 #b1000001011100110101001001010110000010101001100111010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
