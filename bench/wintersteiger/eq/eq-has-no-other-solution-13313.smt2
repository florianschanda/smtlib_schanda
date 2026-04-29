(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0002276217940504476899832297931425273418426513671875p-730 {+ 1025117426867 -730 (1.77093e-220)}
; Y = 1.187981122284097690311455153278075158596038818359375p-485 {+ 846591712271350 -485 (1.18922e-146)}
; 1.0002276217940504476899832297931425273418426513671875p-730 = 1.187981122284097690311455153278075158596038818359375p-485 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100101 #b0000000000001110111010101101110000101001010010110011)))
(assert (= y (fp #b0 #b01000011010 #b0011000000011111100001111110010001111001101111110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
