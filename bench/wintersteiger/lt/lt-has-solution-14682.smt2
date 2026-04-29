(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.692528984302604566636318850214593112468719482421875p-594 {- 3118873275648478 -594 (-2.61047e-179)}
; Y = 1.4678132061236277561278029679669998586177825927734375p-709 {+ 2106843380777367 -709 (5.45009e-214)}
; -1.692528984302604566636318850214593112468719482421875p-594 < 1.4678132061236277561278029679669998586177825927734375p-709 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110101101 #b1011000101001001100101000101101100011100100111011110)))
(assert (= y (fp #b0 #b00100111010 #b0111011111000010100110110011010011110000000110010111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
