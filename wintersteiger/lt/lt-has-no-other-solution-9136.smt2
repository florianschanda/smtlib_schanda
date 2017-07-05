(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.586210910885081037946520154946483671665191650390625p-561 {- 2640059239822570 -561 (-2.10152e-169)}
; Y = -1.1957872292102613709374736572499386966228485107421875p155 {- 881747292515235 155 (-5.46139e+046)}
; -1.586210910885081037946520154946483671665191650390625p-561 < -1.1957872292102613709374736572499386966228485107421875p155 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001110 #b1001011000010001111010110001001011001111010011101010)))
(assert (= y (fp #b1 #b10010011010 #b0011001000011111000111001010001001101110101110100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
