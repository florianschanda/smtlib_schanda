(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.548856332353093723241954648983664810657501220703125p397 {+ 2471829173865330 397 (4.99942e+119)}
; Y = 1.0614503788138118789419195309164933860301971435546875p-653 {+ 276747903127659 -653 (2.83996e-197)}
; 1.548856332353093723241954648983664810657501220703125p397 = 1.0614503788138118789419195309164933860301971435546875p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110001100 #b1000110010000001110110010011110110101000101101110010)))
(assert (= y (fp #b0 #b00101110010 #b0000111110111011001101100100011101010101000001101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
