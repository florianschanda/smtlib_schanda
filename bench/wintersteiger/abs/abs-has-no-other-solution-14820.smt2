(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.951916061435254423628293807269074022769927978515625p995 {- 4287048819567802 995 (-6.53592e+299)}
; -1.951916061435254423628293807269074022769927978515625p995 | == 1.951916061435254423628293807269074022769927978515625p995
; [HW: 1.951916061435254423628293807269074022769927978515625p995] 

; mpf : + 4287048819567802 995
; mpfd: + 4287048819567802 995 (6.53592e+299) class: Pos. norm. non-zero
; hwf : + 4287048819567802 995 (6.53592e+299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100010 #b1111001110110000110001010110000001100110110010111010)))
(assert (= r (fp #b0 #b11111100010 #b1111001110110000110001010110000001100110110010111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
