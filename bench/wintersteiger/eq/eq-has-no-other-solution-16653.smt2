(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2854715692663531978467972294311039149761199951171875p-781 {+ 1285649652972819 -781 (1.01073e-235)}
; Y = 1.79862042233596941542828062665648758411407470703125p-924 {+ 3596666636442740 -924 (1.2683e-278)}
; 1.2854715692663531978467972294311039149761199951171875p-781 = 1.79862042233596941542828062665648758411407470703125p-924 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110010 #b0100100100010100101010100010110111101111110100010011)))
(assert (= y (fp #b0 #b00001100011 #b1100110001110010011000110101001111011001110001110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
