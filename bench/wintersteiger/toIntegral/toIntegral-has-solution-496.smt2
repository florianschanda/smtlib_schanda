(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8138362315846092709392678443691693246364593505859375 1011 {- 3665192549305055 1011 (-3.98037e+304)}
; -1.8138362315846092709392678443691693246364593505859375 1011 I == -1.8138362315846092709392678443691693246364593505859375 1011
; [HW: -1.8138362315846092709392678443691693246364593505859375 1011] 

; mpf : - 3665192549305055 1011
; mpfd: - 3665192549305055 1011 (-3.98037e+304) class: Neg. norm. non-zero
; hwf : - 3665192549305055 1011 (-3.98037e+304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110010 #b1101000001010111100100100011111011110100101011011111)))
(assert (= r (fp #b1 #b11111110010 #b1101000001010111100100100011111011110100101011011111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
