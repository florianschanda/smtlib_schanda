(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7099725896105379963074710758519358932971954345703125 964 {- 3197432290013285 964 (-2.66628e+290)}
; -1.7099725896105379963074710758519358932971954345703125 964 I == -1.7099725896105379963074710758519358932971954345703125 964
; [HW: -1.7099725896105379963074710758519358932971954345703125 964] 

; mpf : - 3197432290013285 964
; mpfd: - 3197432290013285 964 (-2.66628e+290) class: Neg. norm. non-zero
; hwf : - 3197432290013285 964 (-2.66628e+290) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000011 #b1011010111000000110000110111110101101111000001100101)))
(assert (= r (fp #b1 #b11111000011 #b1011010111000000110000110111110101101111000001100101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
