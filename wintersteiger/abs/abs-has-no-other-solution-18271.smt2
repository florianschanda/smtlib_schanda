(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0717930290431549877894212841056287288665771484375p-288 {- 323327058846552 -288 (-2.15512e-087)}
; -1.0717930290431549877894212841056287288665771484375p-288 | == 1.0717930290431549877894212841056287288665771484375p-288
; [HW: 1.0717930290431549877894212841056287288665771484375p-288] 

; mpf : + 323327058846552 -288
; mpfd: + 323327058846552 -288 (2.15512e-087) class: Pos. norm. non-zero
; hwf : + 323327058846552 -288 (2.15512e-087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011011111 #b0001001001100001000001110010011111010010001101011000)))
(assert (= r (fp #b0 #b01011011111 #b0001001001100001000001110010011111010010001101011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
