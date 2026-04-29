(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.751325181788355944689783427747897803783416748046875 239 {+ 3383667808736110 239 (1.54716e+072)}
; 1.751325181788355944689783427747897803783416748046875 239 I == 1.751325181788355944689783427747897803783416748046875 239
; [HW: 1.751325181788355944689783427747897803783416748046875 239] 

; mpf : + 3383667808736110 239
; mpfd: + 3383667808736110 239 (1.54716e+072) class: Pos. norm. non-zero
; hwf : + 3383667808736110 239 (1.54716e+072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101110 #b1100000001010110110110001101110001110001001101101110)))
(assert (= r (fp #b0 #b10011101110 #b1100000001010110110110001101110001110001001101101110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
