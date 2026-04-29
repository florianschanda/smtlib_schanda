(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.26188650095583998478332432569004595279693603515625p280 {+ 1179431948118084 280 (2.45143e+084)}
; 1.26188650095583998478332432569004595279693603515625p280 S == 1.1233372160468289013834919387591071426868438720703125p140
; [HW: 1.1233372160468289013834919387591071426868438720703125p140] 

; mpf : + 555461440229413 140
; mpfd: + 555461440229413 140 (1.5657e+042) class: Pos. norm. non-zero
; hwf : + 555461440229413 140 (1.5657e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010111 #b0100001100001010111111100110010011011110100001000100)))
(assert (= r (fp #b0 #b10010001011 #b0001111110010011000001110001110101001101000000100101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
