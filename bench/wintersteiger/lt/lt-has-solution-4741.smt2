(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.678878151917373440227265746216289699077606201171875p612 {- 3057395392005054 612 (-2.85349e+184)}
; Y = -1.0522090598611786305127679952420294284820556640625p770 {- 235128702536168 770 (-6.53429e+231)}
; -1.678878151917373440227265746216289699077606201171875p612 < -1.0522090598611786305127679952420294284820556640625p770 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001100011 #b1010110111001010111101010110010001110100001110111110)))
(assert (= y (fp #b1 #b11100000001 #b0000110101011101100100101010110010101000100111101000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
