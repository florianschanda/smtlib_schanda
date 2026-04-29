(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.01286858221305298144443440833128988742828369140625p-730 {+ 57954942059492 -730 (1.79331e-220)}
; 1.01286858221305298144443440833128988742828369140625p-730 | == 1.01286858221305298144443440833128988742828369140625p-730
; [HW: 1.01286858221305298144443440833128988742828369140625p-730] 

; mpf : + 57954942059492 -730
; mpfd: + 57954942059492 -730 (1.79331e-220) class: Pos. norm. non-zero
; hwf : + 57954942059492 -730 (1.79331e-220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100101 #b0000001101001011010110101111101111000000001111100100)))
(assert (= r (fp #b0 #b00100100101 #b0000001101001011010110101111101111000000001111100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
