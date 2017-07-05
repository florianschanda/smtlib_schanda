(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4079945923455678968849724697065539658069610595703125 677 {+ 1837444294056677 677 (8.82893e+203)}
; 1.4079945923455678968849724697065539658069610595703125 677 I == 1.4079945923455678968849724697065539658069610595703125 677
; [HW: 1.4079945923455678968849724697065539658069610595703125 677] 

; mpf : + 1837444294056677 677
; mpfd: + 1837444294056677 677 (8.82893e+203) class: Pos. norm. non-zero
; hwf : + 1837444294056677 677 (8.82893e+203) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100100 #b0110100001110010010101010110011100010001101011100101)))
(assert (= r (fp #b0 #b11010100100 #b0110100001110010010101010110011100010001101011100101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
