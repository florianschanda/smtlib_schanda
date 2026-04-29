(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.941715062372652678135409587412141263484954833984375p390 {+ 4241107603990662 390 (4.89648e+117)}
; Y = -1.778513862122929278797300867154262959957122802734375p253 {- 3506114739359590 253 (-2.57422e+076)}
; 1.941715062372652678135409587412141263484954833984375p390 > -1.778513862122929278797300867154262959957122802734375p253 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000101 #b1111000100010100001111010000001100001010100010000110)))
(assert (= y (fp #b1 #b10011111100 #b1100011101001100101011110011100101001100111101100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
