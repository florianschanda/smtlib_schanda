(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3066853634138271278430920574464835226535797119140625p366 {- 1381188088390497 366 (-1.96404e+110)}
; Y = -1.4554617575925627992461386384093202650547027587890625p-287 {- 2051217401775377 -287 (-5.85318e-087)}
; -1.3066853634138271278430920574464835226535797119140625p366 = -1.4554617575925627992461386384093202650547027587890625p-287 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101101 #b0100111010000010111011101001011000000110001101100001)))
(assert (= y (fp #b1 #b01011100000 #b0111010010011001001001000100100101110000010100010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
