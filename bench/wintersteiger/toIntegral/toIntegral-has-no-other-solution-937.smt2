(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7228473765637166703612592755234800279140472412109375 178 {- 3255415175738095 178 (-6.60064e+053)}
; -1.7228473765637166703612592755234800279140472412109375 178 I == -1.7228473765637166703612592755234800279140472412109375 178
; [HW: -1.7228473765637166703612592755234800279140472412109375 178] 

; mpf : - 3255415175738095 178
; mpfd: - 3255415175738095 178 (-6.60064e+053) class: Neg. norm. non-zero
; hwf : - 3255415175738095 178 (-6.60064e+053) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010110001 #b1011100100001100100001101001001001010111001011101111)))
(assert (= r (fp #b1 #b10010110001 #b1011100100001100100001101001001001010111001011101111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
