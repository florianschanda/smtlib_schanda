(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.986278608385504185207537375390529632568359375 626 {+ 4441803973208448 626 (5.53118e+188)}
; 1.986278608385504185207537375390529632568359375 626 I == 1.986278608385504185207537375390529632568359375 626
; [HW: 1.986278608385504185207537375390529632568359375 626] 

; mpf : + 4441803973208448 626
; mpfd: + 4441803973208448 626 (5.53118e+188) class: Pos. norm. non-zero
; hwf : + 4441803973208448 626 (5.53118e+188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110001 #b1111110001111100110000010011111111000010100110000000)))
(assert (= r (fp #b0 #b11001110001 #b1111110001111100110000010011111111000010100110000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
