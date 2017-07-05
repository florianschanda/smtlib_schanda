(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9878887330901469088217936587170697748661041259765625p212 {- 4449055330228297 212 (-1.30843e+064)}
; Y = -1.9662578060160258441868563750176690518856048583984375p-135 {- 4351638295117607 -135 (-4.51431e-041)}
; -1.9878887330901469088217936587170697748661041259765625p212 * -1.9662578060160258441868563750176690518856048583984375p-135 == 1.9543508694649045498437089918297715485095977783203125p78
; [HW: 1.9543508694649045498437089918297715485095977783203125p78] 

; mpf : + 4298014220102853 78
; mpfd: + 4298014220102853 78 (5.90666e+023) class: Pos. norm. non-zero
; hwf : + 4298014220102853 78 (5.90666e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010011 #b1111110011100110010001101010100010110101100001001001)))
(assert (= y (fp #b1 #b01101111000 #b1111011101011100101010111110110001010111111100100111)))
(assert (= r (fp #b0 #b10001001101 #b1111010001010000010101101010110101000010110011000101)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
