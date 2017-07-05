(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8370749134610304675874203894636593759059906005859375p-184 {- 3769850268344287 -184 (-7.49217e-056)}
; -1.8370749134610304675874203894636593759059906005859375p-184 | == 1.8370749134610304675874203894636593759059906005859375p-184
; [HW: 1.8370749134610304675874203894636593759059906005859375p-184] 

; mpf : + 3769850268344287 -184
; mpfd: + 3769850268344287 -184 (7.49217e-056) class: Pos. norm. non-zero
; hwf : + 3769850268344287 -184 (7.49217e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101000111 #b1101011001001010100010101010000110011101111111011111)))
(assert (= r (fp #b0 #b01101000111 #b1101011001001010100010101010000110011101111111011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
