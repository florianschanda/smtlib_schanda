(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.201531381794539665719412369071505963802337646484375p-684 {+ 907616655953350 -684 (1.49699e-206)}
; 1.201531381794539665719412369071505963802337646484375p-684 | == 1.201531381794539665719412369071505963802337646484375p-684
; [HW: 1.201531381794539665719412369071505963802337646484375p-684] 

; mpf : + 907616655953350 -684
; mpfd: + 907616655953350 -684 (1.49699e-206) class: Pos. norm. non-zero
; hwf : + 907616655953350 -684 (1.49699e-206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010011 #b0011001110010111100011111000010111101100110111000110)))
(assert (= r (fp #b0 #b00101010011 #b0011001110010111100011111000010111101100110111000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
