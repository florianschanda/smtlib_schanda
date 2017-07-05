(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.891671330239561132913195251603610813617706298828125p139 {- 4015730670603842 139 (-1.3183e+042)}
; -1.891671330239561132913195251603610813617706298828125p139 | == 1.891671330239561132913195251603610813617706298828125p139
; [HW: 1.891671330239561132913195251603610813617706298828125p139] 

; mpf : + 4015730670603842 139
; mpfd: + 4015730670603842 139 (1.3183e+042) class: Pos. norm. non-zero
; hwf : + 4015730670603842 139 (1.3183e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010001010 #b1110010001000100100100101000001000101000111001000010)))
(assert (= r (fp #b0 #b10010001010 #b1110010001000100100100101000001000101000111001000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
