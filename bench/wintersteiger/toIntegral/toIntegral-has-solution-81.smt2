(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3667853747464373537212622977676801383495330810546875 618 {- 1651854477033003 618 (-1.48675e+186)}
; -1.3667853747464373537212622977676801383495330810546875 618 I == -1.3667853747464373537212622977676801383495330810546875 618
; [HW: -1.3667853747464373537212622977676801383495330810546875 618] 

; mpf : - 1651854477033003 618
; mpfd: - 1651854477033003 618 (-1.48675e+186) class: Neg. norm. non-zero
; hwf : - 1651854477033003 618 (-1.48675e+186) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101001 #b0101110111100101101001010111010100101111111000101011)))
(assert (= r (fp #b1 #b11001101001 #b0101110111100101101001010111010100101111111000101011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
