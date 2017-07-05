(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.42613391531955624458305464941076934337615966796875p508 {- 1919136542243084 508 (-1.19508e+153)}
; Y = -1.3876242928772668516756993994931690394878387451171875p-695 {- 1745704620961811 -695 (-8.4416e-210)}
; Z = -1.428681683171406202603748170076869428157806396484375p875 {- 1930610668591302 875 (-3.599e+263)}
; -1.42613391531955624458305464941076934337615966796875p508 x -1.3876242928772668516756993994931690394878387451171875p-695 -1.428681683171406202603748170076869428157806396484375p875 == -1.4286816831714059805591432450455613434314727783203125p875
; [HW: -1.4286816831714059805591432450455613434314727783203125p875] 

; mpf : - 1930610668591301 875
; mpfd: - 1930610668591301 875 (-3.599e+263) class: Neg. norm. non-zero
; hwf : - 1930610668591301 875 (-3.599e+263) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111011 #b0110110100010111000111001011111000000011100100001100)))
(assert (= y (fp #b1 #b00101001000 #b0110001100111011010110000111110100001011000000010011)))
(assert (= z (fp #b1 #b11101101010 #b0110110110111110000101010011000110011101100011000110)))
(assert (= r (fp #b1 #b11101101010 #b0110110110111110000101010011000110011101100011000101)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
