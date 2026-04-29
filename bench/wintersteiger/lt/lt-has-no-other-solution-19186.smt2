(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.991994021240186096832758266828022897243499755859375p871 {- 4467543904411062 871 (-3.13628e+262)}
; Y = -1.0702750525039455009590483314241282641887664794921875p-235 {- 316490700270211 -235 (-1.93841e-071)}
; -1.991994021240186096832758266828022897243499755859375p871 < -1.0702750525039455009590483314241282641887664794921875p-235 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100110 #b1111110111110011010100011111011100001101110110110110)))
(assert (= y (fp #b1 #b01100010100 #b0001000111111101100010111011110000111010101010000011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
