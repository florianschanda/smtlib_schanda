(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5211799149714118062348688908969052135944366455078125p-782 {- 2347185670858237 -782 (-5.98031e-236)}
; -1.5211799149714118062348688908969052135944366455078125p-782 | == 1.5211799149714118062348688908969052135944366455078125p-782
; [HW: 1.5211799149714118062348688908969052135944366455078125p-782] 

; mpf : + 2347185670858237 -782
; mpfd: + 2347185670858237 -782 (5.98031e-236) class: Pos. norm. non-zero
; hwf : + 2347185670858237 -782 (5.98031e-236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110001 #b1000010101101100000011000000001000100010010111111101)))
(assert (= r (fp #b0 #b00011110001 #b1000010101101100000011000000001000100010010111111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
