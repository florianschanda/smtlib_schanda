(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.068869842607373055187736099469475448131561279296875p-306 {+ 310162197503630 -306 (8.19872e-093)}
; Y = -1.1553221965617443967033750595874153077602386474609375p-556 {- 699508986557839 -556 (-4.89808e-168)}
; 1.068869842607373055187736099469475448131561279296875p-306 > -1.1553221965617443967033750595874153077602386474609375p-556 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001101 #b0001000110100001011101000011100110101101111010001110)))
(assert (= y (fp #b1 #b00111010011 #b0010011111000011001100100000101010010011010110001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
