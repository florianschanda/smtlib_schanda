(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.786867466414892913206813318538479506969451904296875p175 {- 3543736028536078 175 (-8.5574e+052)}
; Y = -1.0822434181598534763679708703421056270599365234375p-730 {- 370391427378392 -730 (-1.91614e-220)}
; -1.786867466414892913206813318538479506969451904296875p175 % -1.0822434181598534763679708703421056270599365234375p-730 == -1.159916753739647532484013936482369899749755859375p-731
; [HW: -1.159916753739647532484013936482369899749755859375p-731] 

; mpf : - 720201032552176 -731
; mpfd: - 720201032552176 -731 (-1.02683e-220) class: Neg. norm. non-zero
; hwf : - 720201032552176 -731 (-1.02683e-220) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101110 #b1100100101110000001001010111001010001001110100001110)))
(assert (= y (fp #b1 #b00100100101 #b0001010100001101111001111001011101001110110011011000)))
(assert (= r (fp #b0 #b00100100100 #x012b814338ac0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
