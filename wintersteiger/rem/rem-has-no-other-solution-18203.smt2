(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7915747805390973557138067917549051344394683837890625p-644 {- 3564935886671761 -644 (-2.45424e-194)}
; Y = -1.1493179292534831947847351329983212053775787353515625p625 {- 672468170545721 625 (-1.60025e+188)}
; -1.7915747805390973557138067917549051344394683837890625p-644 % -1.1493179292534831947847351329983212053775787353515625p625 == -1.7915747805390973557138067917549051344394683837890625p-644
; [HW: -1.7915747805390973557138067917549051344394683837890625p-644] 

; mpf : - 3564935886671761 -644
; mpfd: - 3564935886671761 -644 (-2.45424e-194) class: Neg. norm. non-zero
; hwf : - 3564935886671761 -644 (-2.45424e-194) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111011 #b1100101010100100101001010001001011000000111110010001)))
(assert (= y (fp #b1 #b11001110000 #b0010011000111001101100110010011011011001101000111001)))
(assert (= r (fp #b1 #b00101111011 #xcaa4a512c0f91)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
