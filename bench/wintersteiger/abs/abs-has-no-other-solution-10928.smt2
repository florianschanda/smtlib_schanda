(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0559547612219837287028667560662142932415008544921875p-207 {- 251997841788931 -207 (-5.13377e-063)}
; -1.0559547612219837287028667560662142932415008544921875p-207 | == 1.0559547612219837287028667560662142932415008544921875p-207
; [HW: 1.0559547612219837287028667560662142932415008544921875p-207] 

; mpf : + 251997841788931 -207
; mpfd: + 251997841788931 -207 (5.13377e-063) class: Pos. norm. non-zero
; hwf : + 251997841788931 -207 (5.13377e-063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110000 #b0000111001010011000011010001110110000001000000000011)))
(assert (= r (fp #b0 #b01100110000 #b0000111001010011000011010001110110000001000000000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
