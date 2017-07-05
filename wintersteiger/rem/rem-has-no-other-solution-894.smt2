(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.408366892615352750084412036812864243984222412109375p-453 {- 1839120985412950 -453 (-6.05519e-137)}
; Y = -1.0518746886935301798615682855597697198390960693359375p767 {- 233622828670143 767 (-8.16527e+230)}
; -1.408366892615352750084412036812864243984222412109375p-453 % -1.0518746886935301798615682855597697198390960693359375p767 == -1.408366892615352750084412036812864243984222412109375p-453
; [HW: -1.408366892615352750084412036812864243984222412109375p-453] 

; mpf : - 1839120985412950 -453
; mpfd: - 1839120985412950 -453 (-6.05519e-137) class: Neg. norm. non-zero
; hwf : - 1839120985412950 -453 (-6.05519e-137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000111010 #b0110100010001010101110111001000010001101010101010110)))
(assert (= y (fp #b1 #b11011111110 #b0000110101000111101010001101101101101101110010111111)))
(assert (= r (fp #b1 #b01000111010 #x688abb908d556)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
