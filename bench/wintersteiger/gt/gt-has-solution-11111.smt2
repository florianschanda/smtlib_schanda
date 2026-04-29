(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.058375294356277862561910296790301799774169921875p909 {- 262898953910576 909 (-4.58042e+273)}
; Y = -zero {- 0 -1023 (-0)}
; -1.058375294356277862561910296790301799774169921875p909 > -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110001100 #b0000111011110001101011101110110000100111100100110000)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
