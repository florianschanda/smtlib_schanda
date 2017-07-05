(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3439601094957112081829109229147434234619140625p-554 {- 1549058620955200 -554 (-2.27913e-167)}
; -1.3439601094957112081829109229147434234619140625p-554 | == 1.3439601094957112081829109229147434234619140625p-554
; [HW: 1.3439601094957112081829109229147434234619140625p-554] 

; mpf : + 1549058620955200 -554
; mpfd: + 1549058620955200 -554 (2.27913e-167) class: Pos. norm. non-zero
; hwf : + 1549058620955200 -554 (2.27913e-167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111010101 #b0101100000001101110001010000110101101001101001000000)))
(assert (= r (fp #b0 #b00111010101 #b0101100000001101110001010000110101101001101001000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
