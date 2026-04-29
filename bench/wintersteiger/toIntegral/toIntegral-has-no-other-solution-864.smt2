(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5053064771184712089535651102778501808643341064453125 321 {- 2275698062058645 321 (-6.43063e+096)}
; -1.5053064771184712089535651102778501808643341064453125 321 I == -1.5053064771184712089535651102778501808643341064453125 321
; [HW: -1.5053064771184712089535651102778501808643341064453125 321] 

; mpf : - 2275698062058645 321
; mpfd: - 2275698062058645 321 (-6.43063e+096) class: Neg. norm. non-zero
; hwf : - 2275698062058645 321 (-6.43063e+096) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000000 #b1000000101011011110000111110100110101110010010010101)))
(assert (= r (fp #b1 #b10101000000 #b1000000101011011110000111110100110101110010010010101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
