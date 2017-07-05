(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6838719154438894776149027165956795215606689453125 394 {- 3079885303562248 394 (-6.79403e+118)}
; -1.6838719154438894776149027165956795215606689453125 394 I == -1.6838719154438894776149027165956795215606689453125 394
; [HW: -1.6838719154438894776149027165956795215606689453125 394] 

; mpf : - 3079885303562248 394
; mpfd: - 3079885303562248 394 (-6.79403e+118) class: Neg. norm. non-zero
; hwf : - 3079885303562248 394 (-6.79403e+118) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001001 #b1010111100010010001110101101011101111100000000001000)))
(assert (= r (fp #b1 #b10110001001 #b1010111100010010001110101101011101111100000000001000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
