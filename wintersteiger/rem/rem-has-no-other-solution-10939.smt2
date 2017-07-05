(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7595555865722418698027240679948590695858001708984375p-870 {+ 3420734256653927 -870 (2.23515e-262)}
; Y = -1.6007258037303511155613477967563085258007049560546875p-692 {- 2705428505831851 -692 (-7.7904e-209)}
; 1.7595555865722418698027240679948590695858001708984375p-870 % -1.6007258037303511155613477967563085258007049560546875p-692 == 1.7595555865722418698027240679948590695858001708984375p-870
; [HW: 1.7595555865722418698027240679948590695858001708984375p-870] 

; mpf : + 3420734256653927 -870
; mpfd: + 3420734256653927 -870 (2.23515e-262) class: Pos. norm. non-zero
; hwf : + 3420734256653927 -870 (2.23515e-262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011001 #b1100001001110010001111000010001111010010011001100111)))
(assert (= y (fp #b1 #b00101001011 #b1001100111001001001010101001000011100010100110101011)))
(assert (= r (fp #b0 #b00010011001 #xc2723c23d2667)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
