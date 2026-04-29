(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.65088069737491149879815566237084567546844482421875p-483 {+ 2931306066160300 -483 (6.6104e-146)}
; Y = -1.0015025262953451967717910520150326192378997802734375p144 {- 6766776863831 144 (-2.23343e+043)}
; 1.65088069737491149879815566237084567546844482421875p-483 = -1.0015025262953451967717910520150326192378997802734375p144 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011100 #b1010011010100000000111100000110011010010101010101100)))
(assert (= y (fp #b1 #b10010001111 #b0000000001100010011110000011010101001100110001010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
