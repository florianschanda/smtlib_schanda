(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9933081040920737070365476029110141098499298095703125p123 {+ 4473462007453157 123 (2.11965e+037)}
; 1.9933081040920737070365476029110141098499298095703125p123 | == 1.9933081040920737070365476029110141098499298095703125p123
; [HW: 1.9933081040920737070365476029110141098499298095703125p123] 

; mpf : + 4473462007453157 123
; mpfd: + 4473462007453157 123 (2.11965e+037) class: Pos. norm. non-zero
; hwf : + 4473462007453157 123 (2.11965e+037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111010 #b1111111001001001011100001001110111101101010111100101)))
(assert (= r (fp #b0 #b10001111010 #b1111111001001001011100001001110111101101010111100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
