(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8213366872344558533569625069503672420978546142578125 597 {- 3698971598574813 597 (-9.44708e+179)}
; -1.8213366872344558533569625069503672420978546142578125 597 I == -1.8213366872344558533569625069503672420978546142578125 597
; [HW: -1.8213366872344558533569625069503672420978546142578125 597] 

; mpf : - 3698971598574813 597
; mpfd: - 3698971598574813 597 (-9.44708e+179) class: Neg. norm. non-zero
; hwf : - 3698971598574813 597 (-9.44708e+179) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010100 #b1101001001000011000111110000001010101101010011011101)))
(assert (= r (fp #b1 #b11001010100 #b1101001001000011000111110000001010101101010011011101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
