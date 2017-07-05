(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.744064402158276738674658190575428307056427001953125p-992 {- 3350968164299666 -992 (-4.16684e-299)}
; -1.744064402158276738674658190575428307056427001953125p-992 | == 1.744064402158276738674658190575428307056427001953125p-992
; [HW: 1.744064402158276738674658190575428307056427001953125p-992] 

; mpf : + 3350968164299666 -992
; mpfd: + 3350968164299666 -992 (4.16684e-299) class: Pos. norm. non-zero
; hwf : + 3350968164299666 -992 (4.16684e-299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011111 #b1011111001111011000000010011000101100011001110010010)))
(assert (= r (fp #b0 #b00000011111 #b1011111001111011000000010011000101100011001110010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
