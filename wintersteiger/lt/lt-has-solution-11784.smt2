(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0643381292319105124732914191554300487041473388671875p-13 {+ 289753174834547 -13 (0.000129924)}
; Y = -1.5444356988343168612942690742784179747104644775390625p538 {- 2451920410397425 538 (-1.38966e+162)}
; 1.0643381292319105124732914191554300487041473388671875p-13 < -1.5444356988343168612942690742784179747104644775390625p538 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111110010 #b0001000001111000011101101011000011101111110101110011)))
(assert (= y (fp #b1 #b11000011001 #b1000101101100000001000110101000101000100101011110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
