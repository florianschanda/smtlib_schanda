(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.464724409024976470306000919663347303867340087890625 748 {+ 2092932675314858 748 (2.16867e+225)}
; 1.464724409024976470306000919663347303867340087890625 748 I == 1.464724409024976470306000919663347303867340087890625 748
; [HW: 1.464724409024976470306000919663347303867340087890625 748] 

; mpf : + 2092932675314858 748
; mpfd: + 2092932675314858 748 (2.16867e+225) class: Pos. norm. non-zero
; hwf : + 2092932675314858 748 (2.16867e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101011 #b0111011011111000001011011100101001101010010010101010)))
(assert (= r (fp #b0 #b11011101011 #b0111011011111000001011011100101001101010010010101010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
