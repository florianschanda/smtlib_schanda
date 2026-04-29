(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.44494561918631969632542677572928369045257568359375p140 {- 2003856924767644 140 (-2.01396e+042)}
; Y = -1.3972719340546941868552721643936820328235626220703125p109 {- 1789153734173477 109 (-9.06881e+032)}
; -1.44494561918631969632542677572928369045257568359375p140 > -1.3972719340546941868552721643936820328235626220703125p109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001011 #b0111000111100111111101001100001011100111010110011100)))
(assert (= y (fp #b1 #b10001101100 #b0110010110110011100111010000110001100010001100100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
