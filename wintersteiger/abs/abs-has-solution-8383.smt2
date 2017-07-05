(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3161083799866200028105822639190591871738433837890625p240 {- 1423625582316433 240 (-2.32536e+072)}
; -1.3161083799866200028105822639190591871738433837890625p240 | == 1.3161083799866200028105822639190591871738433837890625p240
; [HW: 1.3161083799866200028105822639190591871738433837890625p240] 

; mpf : + 1423625582316433 240
; mpfd: + 1423625582316433 240 (2.32536e+072) class: Pos. norm. non-zero
; hwf : + 1423625582316433 240 (2.32536e+072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101111 #b0101000011101100011110101001001000001000101110010001)))
(assert (= r (fp #b0 #b10011101111 #b0101000011101100011110101001001000001000101110010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
