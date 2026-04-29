(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.664565304092822106696303308126516640186309814453125p-809 {- 2992936055875794 -809 (-4.87567e-244)}
; -1.664565304092822106696303308126516640186309814453125p-809 | == 1.664565304092822106696303308126516640186309814453125p-809
; [HW: 1.664565304092822106696303308126516640186309814453125p-809] 

; mpf : + 2992936055875794 -809
; mpfd: + 2992936055875794 -809 (4.87567e-244) class: Pos. norm. non-zero
; hwf : + 2992936055875794 -809 (4.87567e-244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011010110 #b1010101000100000111100111010011100100010100011010010)))
(assert (= r (fp #b0 #b00011010110 #b1010101000100000111100111010011100100010100011010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
