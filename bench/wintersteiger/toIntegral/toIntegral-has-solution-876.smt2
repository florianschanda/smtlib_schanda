(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4936430827206714777588558717980049550533294677734375 797 {+ 2223170803394839 797 (1.24495e+240)}
; 1.4936430827206714777588558717980049550533294677734375 797 I == 1.4936430827206714777588558717980049550533294677734375 797
; [HW: 1.4936430827206714777588558717980049550533294677734375 797] 

; mpf : + 2223170803394839 797
; mpfd: + 2223170803394839 797 (1.24495e+240) class: Pos. norm. non-zero
; hwf : + 2223170803394839 797 (1.24495e+240) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011100 #b0111111001011111011001001010000000101110100100010111)))
(assert (= r (fp #b0 #b11100011100 #b0111111001011111011001001010000000101110100100010111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
