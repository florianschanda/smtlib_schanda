(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3334422772114542521393332208390347659587860107421875p105 {+ 1501690515399075 105 (5.40908e+031)}
; 1.3334422772114542521393332208390347659587860107421875p105 | == 1.3334422772114542521393332208390347659587860107421875p105
; [HW: 1.3334422772114542521393332208390347659587860107421875p105] 

; mpf : + 1501690515399075 105
; mpfd: + 1501690515399075 105 (5.40908e+031) class: Pos. norm. non-zero
; hwf : + 1501690515399075 105 (5.40908e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001101000 #b0101010101011100011110010001101110111010000110100011)))
(assert (= r (fp #b0 #b10001101000 #b0101010101011100011110010001101110111010000110100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
