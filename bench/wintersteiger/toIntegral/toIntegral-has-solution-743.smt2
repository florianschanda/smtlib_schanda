(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.459940236512647260269659454934298992156982421875 526 {+ 2071386677771056 526 (3.2071e+158)}
; 1.459940236512647260269659454934298992156982421875 526 I == 1.459940236512647260269659454934298992156982421875 526
; [HW: 1.459940236512647260269659454934298992156982421875 526] 

; mpf : + 2071386677771056 526
; mpfd: + 2071386677771056 526 (3.2071e+158) class: Pos. norm. non-zero
; hwf : + 2071386677771056 526 (3.2071e+158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001101 #b0111010110111110101001001011000111101111101100110000)))
(assert (= r (fp #b0 #b11000001101 #b0111010110111110101001001011000111101111101100110000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
