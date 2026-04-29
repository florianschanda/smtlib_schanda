(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1552798442115277399722117479541338980197906494140625p-831 {+ 699318248529185 -831 (8.06791e-251)}
; Y = -zero {- 0 -1023 (-0)}
; 1.1552798442115277399722117479541338980197906494140625p-831 M -zero == 1.1552798442115277399722117479541338980197906494140625p-831
; [HW: 1.1552798442115277399722117479541338980197906494140625p-831] 

; mpf : + 699318248529185 -831
; mpfd: + 699318248529185 -831 (8.06791e-251) class: Pos. norm. non-zero
; hwf : + 699318248529185 -831 (8.06791e-251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000000 #b0010011111000000011010110111110010011101110100100001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00011000000 #b0010011111000000011010110111110010011101110100100001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
