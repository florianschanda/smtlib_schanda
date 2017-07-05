(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3741577217678149214208360717748291790485382080078125p-461 {- 1685056576331325 -461 (-2.30786e-139)}
; Y = 1.270822285907477589006475682253949344158172607421875p947 {+ 1219675145896542 947 (1.51179e+285)}
; -1.3741577217678149214208360717748291790485382080078125p-461 % 1.270822285907477589006475682253949344158172607421875p947 == -1.3741577217678149214208360717748291790485382080078125p-461
; [HW: -1.3741577217678149214208360717748291790485382080078125p-461] 

; mpf : - 1685056576331325 -461
; mpfd: - 1685056576331325 -461 (-2.30786e-139) class: Neg. norm. non-zero
; hwf : - 1685056576331325 -461 (-2.30786e-139) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110010 #b0101111111001000110011001110101010001001111000111101)))
(assert (= y (fp #b0 #b11110110010 #b0100010101010100100110111111110100000000001001011110)))
(assert (= r (fp #b1 #b01000110010 #x5fc8ccea89e3d)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
