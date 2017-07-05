(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.667172567001880434389704532804898917675018310546875p-837 {+ 3004678124141486 -837 (1.81917e-252)}
; 1.667172567001880434389704532804898917675018310546875p-837 | == 1.667172567001880434389704532804898917675018310546875p-837
; [HW: 1.667172567001880434389704532804898917675018310546875p-837] 

; mpf : + 3004678124141486 -837
; mpfd: + 3004678124141486 -837 (1.81917e-252) class: Pos. norm. non-zero
; hwf : + 3004678124141486 -837 (1.81917e-252) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111010 #b1010101011001011110100100100010000001111101110101110)))
(assert (= r (fp #b0 #b00010111010 #b1010101011001011110100100100010000001111101110101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
