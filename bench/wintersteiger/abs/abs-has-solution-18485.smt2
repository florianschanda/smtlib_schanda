(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4666038913392436260352269528084434568881988525390625p-305 {- 2101397111165041 -305 (-2.2499e-092)}
; -1.4666038913392436260352269528084434568881988525390625p-305 | == 1.4666038913392436260352269528084434568881988525390625p-305
; [HW: 1.4666038913392436260352269528084434568881988525390625p-305] 

; mpf : + 2101397111165041 -305
; mpfd: + 2101397111165041 -305 (2.2499e-092) class: Pos. norm. non-zero
; hwf : + 2101397111165041 -305 (2.2499e-092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011001110 #b0111011101110011010110100100010101111101000001110001)))
(assert (= r (fp #b0 #b01011001110 #b0111011101110011010110100100010101111101000001110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
