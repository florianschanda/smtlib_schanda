(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1679616694668124576850232188007794320583343505859375p676 {- 756432112023263 676 (-3.66189e+203)}
; Y = -1.6955674551929378335302089908509515225887298583984375p883 {- 3132557332017959 883 (-1.09346e+266)}
; -1.1679616694668124576850232188007794320583343505859375p676 > -1.6955674551929378335302089908509515225887298583984375p883 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100011 #b0010101011111111100010010011010101010111011011011111)))
(assert (= y (fp #b1 #b11101110010 #b1011001000010000101101010111000000110111001100100111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
