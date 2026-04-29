(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5071608633912652042141644415096379816532135009765625p-776 {- 2284049475385801 -776 (-3.79213e-234)}
; Y = 1.7606334636944322991070066564134322106838226318359375p117 {+ 3425588583659775 117 (2.92535e+035)}
; -1.5071608633912652042141644415096379816532135009765625p-776 < 1.7606334636944322991070066564134322106838226318359375p117 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110111 #b1000000111010101010010110101101000010011100111001001)))
(assert (= y (fp #b0 #b10001110100 #b1100001010111000110111111110101011001111100011111111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
