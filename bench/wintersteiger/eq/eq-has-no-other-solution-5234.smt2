(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.128161404182504323756575104198418557643890380859375p919 {- 577187652119606 919 (-4.99962e+276)}
; Y = -1.88375252979346985426900573656894266605377197265625p884 {- 3980067563865604 884 (-2.42963e+266)}
; -1.128161404182504323756575104198418557643890380859375p919 = -1.88375252979346985426900573656894266605377197265625p884 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110010110 #b0010000011001111001011111000111110010010110000110110)))
(assert (= y (fp #b1 #b11101110011 #b1110001000111101100110110001010100111000011000000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
