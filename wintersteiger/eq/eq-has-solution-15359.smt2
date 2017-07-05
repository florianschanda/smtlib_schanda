(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0290044936881230785985508191515691578388214111328125p-379 {+ 130624626965901 -379 (8.35697e-115)}
; Y = -1.5904022718279986481348942106706090271472930908203125p83 {- 2658935451403269 83 (-1.53814e+025)}
; 1.0290044936881230785985508191515691578388214111328125p-379 = -1.5904022718279986481348942106706090271472930908203125p83 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000100 #b0000011101101100110101101010011111010011110110001101)))
(assert (= y (fp #b1 #b10001010010 #b1001011100100100100110100111000011111100010000000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
