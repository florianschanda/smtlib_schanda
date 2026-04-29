(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8752952190036840107723037363030016422271728515625p784 {+ 3941979222144168 784 (1.90803e+236)}
; 1.8752952190036840107723037363030016422271728515625p784 S == 1.369414188258498921157979566487483680248260498046875p392
; [HW: 1.369414188258498921157979566487483680248260498046875p392] 

; mpf : + 1663693600586350 392
; mpfd: + 1663693600586350 392 (1.38132e+118) class: Pos. norm. non-zero
; hwf : + 1663693600586350 392 (1.38132e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001111 #b1110000000010011010110001111001111110111010010101000)))
(assert (= r (fp #b0 #b10110000111 #b0101111010010001111011011010000100111111101001101110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
