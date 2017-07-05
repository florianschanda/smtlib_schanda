(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.430415763745032098341880555381067097187042236328125p-346 {- 1938420273216514 -346 (-9.97893e-105)}
; Y = -1.4641463014259932240435091443941928446292877197265625p694 {- 2090329110147497 694 (-1.20338e+209)}
; -1.430415763745032098341880555381067097187042236328125p-346 m -1.4641463014259932240435091443941928446292877197265625p694 == -1.4641463014259932240435091443941928446292877197265625p694
; [HW: -1.4641463014259932240435091443941928446292877197265625p694] 

; mpf : - 2090329110147497 694
; mpfd: - 2090329110147497 694 (-1.20338e+209) class: Neg. norm. non-zero
; hwf : - 2090329110147497 694 (-1.20338e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100101 #b0110111000101111101110100011110011110111110000000010)))
(assert (= y (fp #b1 #b11010110101 #b0111011011010010010010101100000100101111000110101001)))
(assert (= r (fp #b1 #b11010110101 #b0111011011010010010010101100000100101111000110101001)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
