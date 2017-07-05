(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.560063409880914964134035471943207085132598876953125p-960 {- 2522301364043538 -960 (-1.60083e-289)}
; Y = 1.416322141359980246733130115899257361888885498046875p-794 {+ 1874948240694894 -794 (1.35939e-239)}
; Z = -1.6625134888147103939814996920176781713962554931640625p441 {- 2983695501353857 441 (-9.44046e+132)}
; -1.560063409880914964134035471943207085132598876953125p-960 x 1.416322141359980246733130115899257361888885498046875p-794 -1.6625134888147103939814996920176781713962554931640625p441 == -1.6625134888147103939814996920176781713962554931640625p441
; [HW: -1.6625134888147103939814996920176781713962554931640625p441] 

; mpf : - 2983695501353857 441
; mpfd: - 2983695501353857 441 (-9.44046e+132) class: Neg. norm. non-zero
; hwf : - 2983695501353857 441 (-9.44046e+132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111111 #b1000111101100000010100001100110100011111111100010010)))
(assert (= y (fp #b0 #b00011100101 #b0110101010010100000101100111110110111101111001101110)))
(assert (= z (fp #b1 #b10110111000 #b1010100110011010011110111110011110011110001110000001)))
(assert (= r (fp #b1 #b10110111000 #b1010100110011010011110111110011110011110001110000001)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
