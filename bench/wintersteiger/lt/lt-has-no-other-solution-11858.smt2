(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6382889598860910229660703407716937363147735595703125p-914 {+ 2874597921897701 -914 (1.18297e-275)}
; Y = 1.5692559823656171413830406891065649688243865966796875p-627 {+ 2563701030060219 -627 (2.81765e-189)}
; 1.6382889598860910229660703407716937363147735595703125p-914 < 1.5692559823656171413830406891065649688243865966796875p-627 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101101 #b1010001101100110111001111100000000011011110011100101)))
(assert (= y (fp #b0 #b00110001100 #b1001000110111010110000101001001101010000000010111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
