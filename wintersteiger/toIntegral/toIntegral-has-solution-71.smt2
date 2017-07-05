(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.198415660480925293285281441058032214641571044921875 216 {+ 893584694606366 216 (1.26208e+065)}
; 1.198415660480925293285281441058032214641571044921875 216 I == 1.198415660480925293285281441058032214641571044921875 216
; [HW: 1.198415660480925293285281441058032214641571044921875 216] 

; mpf : + 893584694606366 216
; mpfd: + 893584694606366 216 (1.26208e+065) class: Pos. norm. non-zero
; hwf : + 893584694606366 216 (1.26208e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010111 #b0011001011001011010111100110010011000111101000011110)))
(assert (= r (fp #b0 #b10011010111 #b0011001011001011010111100110010011000111101000011110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
