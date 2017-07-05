(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3997064522958775345529147671186365187168121337890625p-522 {+ 1800117829617297 -522 (1.01948e-157)}
; 1.3997064522958775345529147671186365187168121337890625p-522 | == 1.3997064522958775345529147671186365187168121337890625p-522
; [HW: 1.3997064522958775345529147671186365187168121337890625p-522] 

; mpf : + 1800117829617297 -522
; mpfd: + 1800117829617297 -522 (1.01948e-157) class: Pos. norm. non-zero
; hwf : + 1800117829617297 -522 (1.01948e-157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110101 #b0110011001010011001010010111110010011100011010010001)))
(assert (= r (fp #b0 #b00111110101 #b0110011001010011001010010111110010011100011010010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
