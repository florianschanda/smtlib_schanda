(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5179635411743301887099732994101941585540771484375 68 {- 2332700411024216 68 (-4.48024e+020)}
; -1.5179635411743301887099732994101941585540771484375 68 I == -1.5179635411743301887099732994101941585540771484375 68
; [HW: -1.5179635411743301887099732994101941585540771484375 68] 

; mpf : - 2332700411024216 68
; mpfd: - 2332700411024216 68 (-4.48024e+020) class: Neg. norm. non-zero
; hwf : - 2332700411024216 68 (-4.48024e+020) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000011 #b1000010010011001010000100011010111011101001101011000)))
(assert (= r (fp #b1 #b10001000011 #b1000010010011001010000100011010111011101001101011000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
