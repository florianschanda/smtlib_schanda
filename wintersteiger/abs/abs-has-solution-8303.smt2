(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7949053212390044809154687754926271736621856689453125p-116 {- 3579935308526805 -116 (-2.16054e-035)}
; -1.7949053212390044809154687754926271736621856689453125p-116 | == 1.7949053212390044809154687754926271736621856689453125p-116
; [HW: 1.7949053212390044809154687754926271736621856689453125p-116] 

; mpf : + 3579935308526805 -116
; mpfd: + 3579935308526805 -116 (2.16054e-035) class: Pos. norm. non-zero
; hwf : + 3579935308526805 -116 (2.16054e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001011 #b1100101101111110111010100100011000100011010011010101)))
(assert (= r (fp #b0 #b01110001011 #b1100101101111110111010100100011000100011010011010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
