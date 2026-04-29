(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.168963578039923678630884751328267157077789306640625 140 {- 760944307099786 140 (-1.6293e+042)}
; -1.168963578039923678630884751328267157077789306640625 140 I == -1.168963578039923678630884751328267157077789306640625 140
; [HW: -1.168963578039923678630884751328267157077789306640625 140] 

; mpf : - 760944307099786 140
; mpfd: - 760944307099786 140 (-1.6293e+042) class: Neg. norm. non-zero
; hwf : - 760944307099786 140 (-1.6293e+042) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010001011 #b0010101101000001001100100111000111100101100010001010)))
(assert (= r (fp #b1 #b10010001011 #b0010101101000001001100100111000111100101100010001010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
