(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6993405473200748900808321195654571056365966796875p226 {+ 3149549828315768 226 (1.83257e+068)}
; Y = -1.5828922766029902557960440390161238610744476318359375p-883 {- 2625113439706367 -883 (-2.45451e-266)}
; 1.6993405473200748900808321195654571056365966796875p226 > -1.5828922766029902557960440390161238610744476318359375p-883 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100001 #b1011001100000111111110110110101110000001101001111000)))
(assert (= y (fp #b1 #b00010001100 #b1001010100111000011011011010000100011001110011111111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
