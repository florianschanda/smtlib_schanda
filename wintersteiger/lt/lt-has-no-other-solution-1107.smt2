(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2840413711877072255873599715414457023143768310546875p588 {- 1279208613438763 588 (-1.30082e+177)}
; Y = 1.1356066110806093405471983714960515499114990234375p-10 {+ 610717883131608 -10 (0.00110899)}
; -1.2840413711877072255873599715414457023143768310546875p588 < 1.1356066110806093405471983714960515499114990234375p-10 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001011 #b0100100010110110111011110110111111110110010100101011)))
(assert (= y (fp #b0 #b01111110101 #b0010001010110111000111010110011110110110011011011000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
