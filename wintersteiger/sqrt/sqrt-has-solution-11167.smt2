(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.66787087428200653249632523511536419391632080078125p130 {+ 3007823020548052 130 (2.27019e+039)}
; 1.66787087428200653249632523511536419391632080078125p130 S == 1.2914607521260592637446507069398649036884307861328125p65
; [HW: 1.2914607521260592637446507069398649036884307861328125p65] 

; mpf : + 1312622534668045 65
; mpfd: + 1312622534668045 65 (4.76465e+019) class: Pos. norm. non-zero
; hwf : + 1312622534668045 65 (4.76465e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000001 #b1010101011111001100101011110101011111101111111010100)))
(assert (= r (fp #b0 #b10001000000 #b0100101010011101001010111111111001110010111100001101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
