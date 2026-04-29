(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9849318483324014383839539732434786856174468994140625p-497 {- 4435738705135137 -497 (-4.85107e-150)}
; -1.9849318483324014383839539732434786856174468994140625p-497 | == 1.9849318483324014383839539732434786856174468994140625p-497
; [HW: 1.9849318483324014383839539732434786856174468994140625p-497] 

; mpf : + 4435738705135137 -497
; mpfd: + 4435738705135137 -497 (4.85107e-150) class: Pos. norm. non-zero
; hwf : + 4435738705135137 -497 (4.85107e-150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001110 #b1111110000100100011111100101110101100000011000100001)))
(assert (= r (fp #b0 #b01000001110 #b1111110000100100011111100101110101100000011000100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
