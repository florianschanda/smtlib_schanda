(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1036444837181986766694308244041167199611663818359375p560 {- 466773258252287 560 (-4.16511e+168)}
; Y = 1.5228770046639528157328413726645521819591522216796875p-312 {+ 2354828683365179 -312 (1.82518e-094)}
; -1.1036444837181986766694308244041167199611663818359375p560 < 1.5228770046639528157328413726645521819591522216796875p-312 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101111 #b0001101010001000011100011110001111111010111111111111)))
(assert (= y (fp #b0 #b01011000111 #b1000010111011011010001000111001011011100101100111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
