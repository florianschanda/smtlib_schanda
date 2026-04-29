(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.082358550478568215424957088544033467769622802734375p-312 {+ 370909937246054 -312 (1.29722e-094)}
; Y = -1.9391158565592963025636663587647490203380584716796875p-915 {- 4229401821658171 -915 (-7.00096e-276)}
; 1.082358550478568215424957088544033467769622802734375p-312 = -1.9391158565592963025636663587647490203380584716796875p-915 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000111 #b0001010100010101011100110011000011011001111101100110)))
(assert (= y (fp #b1 #b00001101100 #b1111000001101001111001011001001100010011110000111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
