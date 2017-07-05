(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.779221193666941314148743913392536342144012451171875p-970 {+ 3509300277437630 -970 (1.78293e-292)}
; 1.779221193666941314148743913392536342144012451171875p-970 S == 1.3338745044669459982600301373167894780635833740234375p-485
; [HW: 1.3338745044669459982600301373167894780635833740234375p-485] 

; mpf : + 1503637093905847 -485
; mpfd: + 1503637093905847 -485 (1.33526e-146) class: Pos. norm. non-zero
; hwf : + 1503637093905847 -485 (1.33526e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110101 #b1100011101111011000010100100011100100110010010111110)))
(assert (= r (fp #b0 #b01000011010 #b0101010101111000110011001010110110100111010110110111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
