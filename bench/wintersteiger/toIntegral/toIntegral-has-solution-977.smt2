(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.88964898499757172345425715320743620395660400390625 859 {+ 4006622837325604 859 (7.26352e+258)}
; 1.88964898499757172345425715320743620395660400390625 859 I == 1.88964898499757172345425715320743620395660400390625 859
; [HW: 1.88964898499757172345425715320743620395660400390625 859] 

; mpf : + 4006622837325604 859
; mpfd: + 4006622837325604 859 (7.26352e+258) class: Pos. norm. non-zero
; hwf : + 4006622837325604 859 (7.26352e+258) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011010 #b1110001111000000000010010010111101111011111100100100)))
(assert (= r (fp #b0 #b11101011010 #b1110001111000000000010010010111101111011111100100100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
