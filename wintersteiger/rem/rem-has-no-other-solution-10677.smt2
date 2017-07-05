(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4679016825682456026669342463719658553600311279296875p-575 {- 2107241843260379 -575 (-1.187e-173)}
; Y = -1.1050273389903033649517283265595324337482452392578125p170 {- 473001084740445 170 (-1.65376e+051)}
; -1.4679016825682456026669342463719658553600311279296875p-575 % -1.1050273389903033649517283265595324337482452392578125p170 == -1.4679016825682456026669342463719658553600311279296875p-575
; [HW: -1.4679016825682456026669342463719658553600311279296875p-575] 

; mpf : - 2107241843260379 -575
; mpfd: - 2107241843260379 -575 (-1.187e-173) class: Neg. norm. non-zero
; hwf : - 2107241843260379 -575 (-1.187e-173) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111000000 #b0111011111001000011001111001100001011111101111011011)))
(assert (= y (fp #b1 #b10010101001 #b0001101011100011000100100101101000100110001101011101)))
(assert (= r (fp #b1 #b00111000000 #x77c867985fbdb)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
