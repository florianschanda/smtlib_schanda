(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.386113149781778020042111165821552276611328125p657 {- 1738899037480064 657 (-8.28907e+197)}
; Y = 1.1362197171775445525554459891282021999359130859375p953 {+ 613479067521304 953 (8.65064e+286)}
; -1.386113149781778020042111165821552276611328125p657 / 1.1362197171775445525554459891282021999359130859375p953 == -1.21993407509683748912721057422459125518798828125p-296
; [HW: -1.21993407509683748912721057422459125518798828125p-296] 

; mpf : - 990495018652192 -296
; mpfd: - 990495018652192 -296 (-9.58203e-090) class: Neg. norm. non-zero
; hwf : - 990495018652192 -296 (-9.58203e-090) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010000 #b0110001011011000010011111011011011011110010010000000)))
(assert (= y (fp #b0 #b11110111000 #b0010001011011111010010111001111001011001000100011000)))
(assert (= r (fp #b1 #b01011010111 #b0011100001001101100110010111101111010001001000100000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
