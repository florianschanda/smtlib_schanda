(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9055855507888919131431748610339127480983734130859375p2 {- 4078394749084959 2 (-7.62234)}
; Y = 1.042709059886922862148139756754972040653228759765625p14 {+ 192344506192090 14 (17083.7)}
; -1.9055855507888919131431748610339127480983734130859375p2 = 1.042709059886922862148139756754972040653228759765625p14 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000001 #b1110011111010100011101000110010001011110010100011111)))
(assert (= y (fp #b0 #b10000001101 #b0000101011101110111110110001111101110101000011011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
