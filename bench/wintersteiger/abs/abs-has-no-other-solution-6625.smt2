(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0892934526342898937656400448759086430072784423828125p98 {+ 402141960010413 98 (3.45211e+029)}
; 1.0892934526342898937656400448759086430072784423828125p98 | == 1.0892934526342898937656400448759086430072784423828125p98
; [HW: 1.0892934526342898937656400448759086430072784423828125p98] 

; mpf : + 402141960010413 98
; mpfd: + 402141960010413 98 (3.45211e+029) class: Pos. norm. non-zero
; hwf : + 402141960010413 98 (3.45211e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100001 #b0001011011011011111011111000101011001111101010101101)))
(assert (= r (fp #b0 #b10001100001 #b0001011011011011111011111000101011001111101010101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
