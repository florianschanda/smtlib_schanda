(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.423633244986348245220142416656017303466796875p115 {+ 1907874524262272 115 (5.91354e+034)}
; Y = -zero {- 0 -1023 (-0)}
; 1.423633244986348245220142416656017303466796875p115 + -zero == 1.423633244986348245220142416656017303466796875p115
; [HW: 1.423633244986348245220142416656017303466796875p115] 

; mpf : + 1907874524262272 115
; mpfd: + 1907874524262272 115 (5.91354e+034) class: Pos. norm. non-zero
; hwf : + 1907874524262272 115 (5.91354e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110010 #b0110110001110011001110100111010010110110111110000000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10001110010 #b0110110001110011001110100111010010110110111110000000)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
