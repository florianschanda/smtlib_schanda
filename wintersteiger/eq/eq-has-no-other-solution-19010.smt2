(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.819927934230880506305538801825605332851409912109375p-544 {+ 3692627139072854 -544 (3.16036e-164)}
; Y = 1.5866432862920298862974277653847821056842803955078125p-38 {+ 2642006485544189 -38 (5.77217e-012)}
; 1.819927934230880506305538801825605332851409912109375p-544 = 1.5866432862920298862974277653847821056842803955078125p-38 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011111 #b1101000111100110110011000000111010011001001101010110)))
(assert (= y (fp #b0 #b01111011001 #b1001011000101110010000010010000100001010110011111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
