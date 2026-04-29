(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2499950968172794940613812286756001412868499755859375p51 {+ 1125877824870751 51 (2.81474e+015)}
; Y = -1.1927583247935042987109000023338012397289276123046875p925 {- 868106319712587 925 (-3.38297e+278)}
; 1.2499950968172794940613812286756001412868499755859375p51 < -1.1927583247935042987109000023338012397289276123046875p925 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110010 #b0011111111111111101011011011110011111101100101011111)))
(assert (= y (fp #b1 #b11110011100 #b0011000101011000100111000000110100000101000101001011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
