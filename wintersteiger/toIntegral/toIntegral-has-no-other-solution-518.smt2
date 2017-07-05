(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5802710812238576210120299947448074817657470703125 420 {- 2613308625173640 420 (-4.27888e+126)}
; -1.5802710812238576210120299947448074817657470703125 420 I == -1.5802710812238576210120299947448074817657470703125 420
; [HW: -1.5802710812238576210120299947448074817657470703125 420] 

; mpf : - 2613308625173640 420
; mpfd: - 2613308625173640 420 (-4.27888e+126) class: Neg. norm. non-zero
; hwf : - 2613308625173640 420 (-4.27888e+126) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110100011 #b1001010010001100101001010100010010101011110010001000)))
(assert (= r (fp #b1 #b10110100011 #b1001010010001100101001010100010010101011110010001000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
