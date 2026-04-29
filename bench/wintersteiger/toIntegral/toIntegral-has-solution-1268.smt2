(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0332294818385887591460914336494170129299163818359375 306 {- 149652282025983 306 (-1.34702e+092)}
; -1.0332294818385887591460914336494170129299163818359375 306 I == -1.0332294818385887591460914336494170129299163818359375 306
; [HW: -1.0332294818385887591460914336494170129299163818359375 306] 

; mpf : - 149652282025983 306
; mpfd: - 149652282025983 306 (-1.34702e+092) class: Neg. norm. non-zero
; hwf : - 149652282025983 306 (-1.34702e+092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110001 #b0000100010000001101110100011000111000010011111111111)))
(assert (= r (fp #b1 #b10100110001 #b0000100010000001101110100011000111000010011111111111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
