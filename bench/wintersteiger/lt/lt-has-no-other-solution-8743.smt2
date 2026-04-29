(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.271746699296909088872098436695523560047149658203125p974 {- 1223838333692722 974 (-2.03056e+293)}
; Y = 1.0955729008851147199266051757149398326873779296875p627 {+ 430422080812920 627 (6.10167e+188)}
; -1.271746699296909088872098436695523560047149658203125p974 < 1.0955729008851147199266051757149398326873779296875p627 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001101 #b0100010110010001001100010001001001000110101100110010)))
(assert (= y (fp #b0 #b11001110010 #b0001100001110111011101110011001110101111011101111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
