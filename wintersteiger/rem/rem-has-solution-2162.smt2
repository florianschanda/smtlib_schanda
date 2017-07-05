(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1140117158324363000332368756062351167201995849609375p319 {+ 513463120938831 319 (1.18976e+096)}
; Y = -0.643764543784774101453649564064107835292816162109375p-1022 {- 2899257759503446 -1023 (-1.43242e-308)}
; 1.1140117158324363000332368756062351167201995849609375p319 % -0.643764543784774101453649564064107835292816162109375p-1022 == 0.56567272338846663615186116658151149749755859375p-1022
; [HW: 0.56567272338846663615186116658151149749755859375p-1022] 

; mpf : + 2547563466265952 -1023
; mpfd: + 2547563466265952 -1023 (1.25866e-308) class: Pos. denorm.
; hwf : + 2547563466265952 -1023 (1.25866e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111110 #b0001110100101111110111110010111011011100011101001111)))
(assert (= y (fp #b1 #b00000000000 #b1010010011001101110000001100110111100001010001010110)))
(assert (= r (fp #b1 #b00000000000 #x13fdd356afef6)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
