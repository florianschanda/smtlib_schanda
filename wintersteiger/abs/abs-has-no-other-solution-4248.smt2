(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8989604289109280887970498952199704945087432861328125p-28 {- 4048557852664077 -28 (-7.07418e-009)}
; -1.8989604289109280887970498952199704945087432861328125p-28 | == 1.8989604289109280887970498952199704945087432861328125p-28
; [HW: 1.8989604289109280887970498952199704945087432861328125p-28] 

; mpf : + 4048557852664077 -28
; mpfd: + 4048557852664077 -28 (7.07418e-009) class: Pos. norm. non-zero
; hwf : + 4048557852664077 -28 (7.07418e-009) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100011 #b1110011000100010010001010100101010010010000100001101)))
(assert (= r (fp #b0 #b01111100011 #b1110011000100010010001010100101010010010000100001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
