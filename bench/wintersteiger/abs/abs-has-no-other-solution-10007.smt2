(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.01856699104342229844633038737811148166656494140625p791 {- 83618293944548 791 (-1.32653e+238)}
; -1.01856699104342229844633038737811148166656494140625p791 | == 1.01856699104342229844633038737811148166656494140625p791
; [HW: 1.01856699104342229844633038737811148166656494140625p791] 

; mpf : + 83618293944548 791
; mpfd: + 83618293944548 791 (1.32653e+238) class: Pos. norm. non-zero
; hwf : + 83618293944548 791 (1.32653e+238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010110 #b0000010011000000110011100110101101010001000011100100)))
(assert (= r (fp #b0 #b11100010110 #b0000010011000000110011100110101101010001000011100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
