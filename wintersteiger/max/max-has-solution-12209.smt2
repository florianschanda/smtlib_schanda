(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4496077927098565130137330925208516418933868408203125p239 {- 2024853487710981 239 (-1.28062e+072)}
; Y = -1.029780597022797561379547914839349687099456787109375p-249 {- 134119885654742 -249 (-1.13835e-075)}
; -1.4496077927098565130137330925208516418933868408203125p239 M -1.029780597022797561379547914839349687099456787109375p-249 == -1.029780597022797561379547914839349687099456787109375p-249
; [HW: -1.029780597022797561379547914839349687099456787109375p-249] 

; mpf : - 134119885654742 -249
; mpfd: - 134119885654742 -249 (-1.13835e-075) class: Neg. norm. non-zero
; hwf : - 134119885654742 -249 (-1.13835e-075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101110 #b0111001100011001011111110000110110110111001100000101)))
(assert (= y (fp #b1 #b01100000110 #b0000011110011111101100111000001001000100101011010110)))
(assert (= r (fp #b1 #b01100000110 #b0000011110011111101100111000001001000100101011010110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
