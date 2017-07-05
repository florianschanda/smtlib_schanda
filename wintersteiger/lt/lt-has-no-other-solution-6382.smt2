(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0654902392066694094552303795353509485721588134765625p-439 {- 294941816887561 -439 (-7.50553e-133)}
; Y = -1.8250353512151733514912166356225498020648956298828125p-368 {- 3715628900300141 -368 (-3.03552e-111)}
; -1.0654902392066694094552303795353509485721588134765625p-439 < -1.8250353512151733514912166356225498020648956298828125p-368 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001000 #b0001000011000011111101111110001110011001100100001001)))
(assert (= y (fp #b1 #b01010001111 #b1101001100110101100001000100101110000011010101101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
