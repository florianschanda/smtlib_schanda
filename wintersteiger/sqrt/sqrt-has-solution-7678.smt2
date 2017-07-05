(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8968828034456362008342011904460377991199493408203125p-174 {+ 4039201059392773 -174 (7.92175e-053)}
; 1.8968828034456362008342011904460377991199493408203125p-174 S == 1.377273685018934656909550540149211883544921875p-87
; [HW: 1.377273685018934656909550540149211883544921875p-87] 

; mpf : + 1699089627267968 -87
; mpfd: + 1699089627267968 -87 (8.90042e-027) class: Pos. norm. non-zero
; hwf : + 1699089627267968 -87 (8.90042e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010001 #b1110010110011010000111001000010100100100110100000101)))
(assert (= r (fp #b0 #b01110101000 #b0110000010010101000000100001101011001100001110000000)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
