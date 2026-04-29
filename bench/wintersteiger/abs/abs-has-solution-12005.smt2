(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9193247545091314254506187353399582207202911376953125p259 {+ 4140270621839797 259 (1.77794e+078)}
; 1.9193247545091314254506187353399582207202911376953125p259 | == 1.9193247545091314254506187353399582207202911376953125p259
; [HW: 1.9193247545091314254506187353399582207202911376953125p259] 

; mpf : + 4140270621839797 259
; mpfd: + 4140270621839797 259 (1.77794e+078) class: Pos. norm. non-zero
; hwf : + 4140270621839797 259 (1.77794e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000010 #b1110101101011000110111011111101100000101000110110101)))
(assert (= r (fp #b0 #b10100000010 #b1110101101011000110111011111101100000101000110110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
