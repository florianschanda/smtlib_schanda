(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8665227872205958359330679741105996072292327880859375p894 {- 3902471701634719 894 (-2.46518e+269)}
; Y = -1.0658279406559720836611404592986218631267547607421875p376 {- 296462689008803 376 (-1.64046e+113)}
; -1.8665227872205958359330679741105996072292327880859375p894 > -1.0658279406559720836611404592986218631267547607421875p376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111101 #b1101110111010100011011111111100001011001111010011111)))
(assert (= y (fp #b1 #b10101110111 #b0001000011011010000110011001010001000111110010100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
