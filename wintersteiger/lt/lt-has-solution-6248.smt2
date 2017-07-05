(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.73602224730893084370109136216342449188232421875p1012 {- 3314749518716896 1012 (-7.61923e+304)}
; Y = 1.5480109233195198381594082093215547502040863037109375p466 {+ 2468021790056751 466 (2.94952e+140)}
; -1.73602224730893084370109136216342449188232421875p1012 < 1.5480109233195198381594082093215547502040863037109375p466 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110011 #b1011110001101011111101000011100101010001111111100000)))
(assert (= y (fp #b0 #b10111010001 #b1000110001001010011100011010000110000010000100101111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
