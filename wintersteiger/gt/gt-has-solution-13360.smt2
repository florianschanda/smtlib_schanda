(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.65389312921941300515982220531441271305084228515625p749 {- 2944872853092676 749 (-4.8975e+225)}
; Y = -1.257292902521629951451132001238875091075897216796875p479 {- 1158744219921486 479 (-1.96248e+144)}
; -1.65389312921941300515982220531441271305084228515625p749 > -1.257292902521629951451132001238875091075897216796875p479 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101100 #b1010011101100101100010100100010100010011100101000100)))
(assert (= y (fp #b1 #b10111011110 #b0100000111011101111100101001100111010010110001001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
