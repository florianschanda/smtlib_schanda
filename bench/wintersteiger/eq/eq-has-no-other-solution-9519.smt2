(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2265345500234687836638158842106349766254425048828125p-792 {+ 1020220915072237 -792 (4.70894e-239)}
; Y = -1.6143232407655390137080075874109752476215362548828125p-475 {- 2766665918196717 -475 (-1.65479e-143)}
; 1.2265345500234687836638158842106349766254425048828125p-792 = -1.6143232407655390137080075874109752476215362548828125p-475 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100111 #b0011100111111110001010110001001111000011110011101101)))
(assert (= y (fp #b1 #b01000100100 #b1001110101000100010010011011010001000010101111101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
