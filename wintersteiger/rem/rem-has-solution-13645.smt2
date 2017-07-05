(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0089314042648993563489057123661041259765625p-737 {+ 40223468919296 -737 (1.39558e-222)}
; Y = 1.8991471577682113025531407402013428509235382080078125p876 {+ 4049398804676157 876 (9.5683e+263)}
; 1.0089314042648993563489057123661041259765625p-737 % 1.8991471577682113025531407402013428509235382080078125p876 == 1.0089314042648993563489057123661041259765625p-737
; [HW: 1.0089314042648993563489057123661041259765625p-737] 

; mpf : + 40223468919296 -737
; mpfd: + 40223468919296 -737 (1.39558e-222) class: Pos. norm. non-zero
; hwf : + 40223468919296 -737 (1.39558e-222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011110 #b0000001001001001010101000001100100111001101000000000)))
(assert (= y (fp #b0 #b11101101011 #b1110011000101110100000100001010011100111111000111101)))
(assert (= r (fp #b0 #b00100011110 #x0249541939a00)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
