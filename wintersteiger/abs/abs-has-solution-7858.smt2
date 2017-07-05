(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.353443627425648276840774997253902256488800048828125p596 {- 1591768588770626 596 (-3.51008e+179)}
; -1.353443627425648276840774997253902256488800048828125p596 | == 1.353443627425648276840774997253902256488800048828125p596
; [HW: 1.353443627425648276840774997253902256488800048828125p596] 

; mpf : + 1591768588770626 596
; mpfd: + 1591768588770626 596 (3.51008e+179) class: Pos. norm. non-zero
; hwf : + 1591768588770626 596 (3.51008e+179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010011 #b0101101001111011010010000001010011000101110101000010)))
(assert (= r (fp #b0 #b11001010011 #b0101101001111011010010000001010011000101110101000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
