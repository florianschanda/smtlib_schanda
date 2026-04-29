(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0826465641998341826734986170777119696140289306640625p-601 {- 372207035733825 -601 (-1.30455e-181)}
; -1.0826465641998341826734986170777119696140289306640625p-601 | == 1.0826465641998341826734986170777119696140289306640625p-601
; [HW: 1.0826465641998341826734986170777119696140289306640625p-601] 

; mpf : + 372207035733825 -601
; mpfd: + 372207035733825 -601 (1.30455e-181) class: Pos. norm. non-zero
; hwf : + 372207035733825 -601 (1.30455e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100110 #b0001010100101000010100110100001001011101011101000001)))
(assert (= r (fp #b0 #b00110100110 #b0001010100101000010100110100001001011101011101000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
