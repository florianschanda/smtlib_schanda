(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4403505080124958670495516344089992344379425048828125 145 {- 1983162383797485 145 (-6.42418e+043)}
; -1.4403505080124958670495516344089992344379425048828125 145 I == -1.4403505080124958670495516344089992344379425048828125 145
; [HW: -1.4403505080124958670495516344089992344379425048828125 145] 

; mpf : - 1983162383797485 145
; mpfd: - 1983162383797485 145 (-6.42418e+043) class: Neg. norm. non-zero
; hwf : - 1983162383797485 145 (-6.42418e+043) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010000 #b0111000010111010110011111001011010110000110011101101)))
(assert (= r (fp #b1 #b10010010000 #b0111000010111010110011111001011010110000110011101101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
