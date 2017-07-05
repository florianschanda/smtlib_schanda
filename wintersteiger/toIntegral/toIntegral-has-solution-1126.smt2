(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5067157600046161558537960445391945540904998779296875 421 {- 2282044907939547 421 (-8.15942e+126)}
; -1.5067157600046161558537960445391945540904998779296875 421 I == -1.5067157600046161558537960445391945540904998779296875 421
; [HW: -1.5067157600046161558537960445391945540904998779296875 421] 

; mpf : - 2282044907939547 421
; mpfd: - 2282044907939547 421 (-8.15942e+126) class: Neg. norm. non-zero
; hwf : - 2282044907939547 421 (-8.15942e+126) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110100100 #b1000000110111000000111111100000110010110011011011011)))
(assert (= r (fp #b1 #b10110100100 #b1000000110111000000111111100000110010110011011011011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
