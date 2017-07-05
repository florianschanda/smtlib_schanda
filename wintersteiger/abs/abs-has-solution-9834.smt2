(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.827819167935709199213079045875929296016693115234375p117 {- 3728166096245414 117 (-3.03699e+035)}
; -1.827819167935709199213079045875929296016693115234375p117 | == 1.827819167935709199213079045875929296016693115234375p117
; [HW: 1.827819167935709199213079045875929296016693115234375p117] 

; mpf : + 3728166096245414 117
; mpfd: + 3728166096245414 117 (3.03699e+035) class: Pos. norm. non-zero
; hwf : + 3728166096245414 117 (3.03699e+035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110100 #b1101001111101011111101001111110101001001001010100110)))
(assert (= r (fp #b0 #b10001110100 #b1101001111101011111101001111110101001001001010100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
