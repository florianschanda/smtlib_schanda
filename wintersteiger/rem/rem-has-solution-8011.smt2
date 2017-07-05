(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.14860513767337923951572520309127867221832275390625p418 {+ 669258042651172 418 (7.77515e+125)}
; Y = 1.0961817640996092126925987031427212059497833251953125p-397 {+ 433164156958837 -397 (3.39605e-120)}
; 1.14860513767337923951572520309127867221832275390625p418 % 1.0961817640996092126925987031427212059497833251953125p-397 == 1.64456138820039399206507368944585323333740234375p-401
; [HW: 1.64456138820039399206507368944585323333740234375p-401] 

; mpf : + 2902846427716704 -401
; mpfd: + 2902846427716704 -401 (3.18436e-121) class: Pos. norm. non-zero
; hwf : + 2902846427716704 -401 (3.18436e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100001 #b0010011000001010111111000111111001010011001000100100)))
(assert (= y (fp #b0 #b01001110010 #b0001100010011111010111100011101101000111100001110101)))
(assert (= r (fp #b0 #b01001101110 #xa501f9a295c60)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
