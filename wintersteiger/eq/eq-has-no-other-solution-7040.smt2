(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.15261784623546414962902417755685746669769287109375p-1 {+ 687329675436124 -1 (0.576309)}
; Y = -1.8899195552377874296468007742078043520450592041015625p844 {- 4007841377358617 844 (-2.21697e+254)}
; 1.15261784623546414962902417755685746669769287109375p-1 = -1.8899195552377874296468007742078043520450592041015625p844 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111110 #b0010011100010001111101101001001001011110000001011100)))
(assert (= y (fp #b1 #b11101001011 #b1110001111010001110001001001100111010001001100011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
