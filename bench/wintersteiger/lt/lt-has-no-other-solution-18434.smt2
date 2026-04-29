(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2773256229568008546237933842348866164684295654296875p-218 {+ 1248963572208539 -218 (3.03223e-066)}
; Y = -1.7602630902994913508763374920818023383617401123046875p-212 {- 3423920570176331 -212 (-2.67435e-064)}
; 1.2773256229568008546237933842348866164684295654296875p-218 < -1.7602630902994913508763374920818023383617401123046875p-212 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100101 #b0100011011111110110011111110000011110001001110011011)))
(assert (= y (fp #b1 #b01100101011 #b1100001010100000100110100001010100110001001101001011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
