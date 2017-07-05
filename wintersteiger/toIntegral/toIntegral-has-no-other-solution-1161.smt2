(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.666736561727237830865533396718092262744903564453125 919 {- 3002714530949074 919 (-7.3864e+276)}
; -1.666736561727237830865533396718092262744903564453125 919 I == -1.666736561727237830865533396718092262744903564453125 919
; [HW: -1.666736561727237830865533396718092262744903564453125 919] 

; mpf : - 3002714530949074 919
; mpfd: - 3002714530949074 919 (-7.3864e+276) class: Neg. norm. non-zero
; hwf : - 3002714530949074 919 (-7.3864e+276) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010110 #b1010101010101111001111110100111110101010011111010010)))
(assert (= r (fp #b1 #b11110010110 #b1010101010101111001111110100111110101010011111010010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
