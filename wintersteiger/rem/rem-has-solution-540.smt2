(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.37518020619429659490151607315056025981903076171875p429 {- 1689661436813420 429 (-1.90646e+129)}
; Y = -1.59796923616735053741422234452329576015472412109375p-566 {- 2693014029182300 -566 (-6.61593e-171)}
; -1.37518020619429659490151607315056025981903076171875p429 % -1.59796923616735053741422234452329576015472412109375p-566 == -1.2643619457366934710762507165782153606414794921875p-567
; [HW: -1.2643619457366934710762507165782153606414794921875p-567] 

; mpf : - 1190580360310712 -567
; mpfd: - 1190580360310712 -567 (-2.61736e-171) class: Neg. norm. non-zero
; hwf : - 1190580360310712 -567 (-2.61736e-171) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101100 #b0110000000001011110011110101101110110110000001101100)))
(assert (= y (fp #b1 #b00111001001 #b1001100100010100100000110000100101011010010101011100)))
(assert (= r (fp #b1 #b00111001000 #x43ad39773efb8)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
