(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.758920574599873720700315971043892204761505126953125p-66 {- 3417874416971794 -66 (-2.38378e-020)}
; -1.758920574599873720700315971043892204761505126953125p-66 | == 1.758920574599873720700315971043892204761505126953125p-66
; [HW: 1.758920574599873720700315971043892204761505126953125p-66] 

; mpf : + 3417874416971794 -66
; mpfd: + 3417874416971794 -66 (2.38378e-020) class: Pos. norm. non-zero
; hwf : + 3417874416971794 -66 (2.38378e-020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111101 #b1100001001001000100111100110100000101011000000010010)))
(assert (= r (fp #b0 #b01110111101 #b1100001001001000100111100110100000101011000000010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
