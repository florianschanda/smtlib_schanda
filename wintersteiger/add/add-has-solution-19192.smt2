(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0137764478206470197818589440430514514446258544921875p-835 {- 62043605271555 -835 (-4.42482e-252)}
; Y = 1.866340665395657794078942970372736454010009765625p-923 {+ 3901651497851792 -923 (2.63212e-278)}
; -1.0137764478206470197818589440430514514446258544921875p-835 + 1.866340665395657794078942970372736454010009765625p-923 == -1.013776447820646797737254019011743366718292236328125p-835
; [HW: -1.013776447820646797737254019011743366718292236328125p-835] 

; mpf : - 62043605271554 -835
; mpfd: - 62043605271554 -835 (-4.42482e-252) class: Neg. norm. non-zero
; hwf : - 62043605271554 -835 (-4.42482e-252) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111100 #b0000001110000110110110100111000011011000010000000011)))
(assert (= y (fp #b0 #b00001100100 #b1101110111001000100000000111100100010001101110010000)))
(assert (= r (fp #b1 #b00010111100 #b0000001110000110110110100111000011011000010000000010)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
