(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6208457554465887096029064196045510470867156982421875p-617 {+ 2796040712883811 -617 (2.98012e-186)}
; Y = -1.5885368598029565578855226704035885632038116455078125p417 {- 2650534382502397 417 (-5.37657e+125)}
; 1.6208457554465887096029064196045510470867156982421875p-617 < -1.5885368598029565578855226704035885632038116455078125p417 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010110 #b1001111011101111101111110101011110000000111001100011)))
(assert (= y (fp #b1 #b10110100000 #b1001011010101010010110100000010101011000000111111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
