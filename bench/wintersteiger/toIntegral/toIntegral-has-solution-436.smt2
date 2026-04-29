(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.131240747445513949998030511778779327869415283203125 215 {+ 591055781291442 215 (5.95668e+064)}
; 1.131240747445513949998030511778779327869415283203125 215 I == 1.131240747445513949998030511778779327869415283203125 215
; [HW: 1.131240747445513949998030511778779327869415283203125 215] 

; mpf : + 591055781291442 215
; mpfd: + 591055781291442 215 (5.95668e+064) class: Pos. norm. non-zero
; hwf : + 591055781291442 215 (5.95668e+064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010110 #b0010000110011000111111100101111000101110010110110010)))
(assert (= r (fp #b0 #b10011010110 #b0010000110011000111111100101111000101110010110110010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
