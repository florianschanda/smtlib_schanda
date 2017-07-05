(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4021841591178463293232425712631084024906158447265625p-837 {- 1811276429137449 -837 (-1.53003e-252)}
; Y = 1.7852852527665346027418991070589981973171234130859375p411 {+ 3536610371738911 411 (9.44139e+123)}
; -1.4021841591178463293232425712631084024906158447265625p-837 * 1.7852852527665346027418991070589981973171234130859375p411 == -1.2516493504679673254287308736820705235004425048828125p-425
; [HW: -1.2516493504679673254287308736820705235004425048828125p-425] 

; mpf : - 1133327920995565 -425
; mpfd: - 1133327920995565 -425 (-1.44456e-128) class: Neg. norm. non-zero
; hwf : - 1133327920995565 -425 (-1.44456e-128) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111010 #b0110011011110101100010101000001001100001011000101001)))
(assert (= y (fp #b0 #b10110011010 #b1100100100001000011101000100111010101001110100011111)))
(assert (= r (fp #b1 #b01001010110 #b0100000001101100000101111000001001010001110011101101)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
