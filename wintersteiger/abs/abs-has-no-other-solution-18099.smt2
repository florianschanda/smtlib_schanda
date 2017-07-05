(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.415503283705799919545142984134145081043243408203125p119 {+ 1871260433668658 119 (9.40763e+035)}
; 1.415503283705799919545142984134145081043243408203125p119 | == 1.415503283705799919545142984134145081043243408203125p119
; [HW: 1.415503283705799919545142984134145081043243408203125p119] 

; mpf : + 1871260433668658 119
; mpfd: + 1871260433668658 119 (9.40763e+035) class: Pos. norm. non-zero
; hwf : + 1871260433668658 119 (9.40763e+035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110110 #b0110101001011110011011000101011011100101101000110010)))
(assert (= r (fp #b0 #b10001110110 #b0110101001011110011011000101011011100101101000110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
