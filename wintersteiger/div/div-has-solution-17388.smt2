(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7437568676024313152339573207427747547626495361328125p-522 {+ 3349583151788557 -522 (1.27007e-157)}
; Y = -1.268337961161554172662135897553525865077972412109375p323 {- 1208486741896534 323 (-2.16732e+097)}
; 1.7437568676024313152339573207427747547626495361328125p-522 / -1.268337961161554172662135897553525865077972412109375p323 == -1.37483614068089909920900026918388903141021728515625p-845
; [HW: -1.37483614068089909920900026918388903141021728515625p-845] 

; mpf : - 1688111903495492 -845
; mpfd: - 1688111903495492 -845 (-5.86009e-255) class: Neg. norm. non-zero
; hwf : - 1688111903495492 -845 (-5.86009e-255) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110101 #b1011111001100110110110011001111010000111001000001101)))
(assert (= y (fp #b1 #b10101000010 #b0100010010110001110010111110111101110110110101010110)))
(assert (= r (fp #b1 #b00010110010 #b0101111111110101010000101110010110010101010101000100)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
