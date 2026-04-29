(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7149880379361146509609170607291162014007568359375p-639 {- 3220019861223448 -639 (-7.51785e-193)}
; Y = -1.160958370012008078475673755747266113758087158203125p-994 {- 724892055208242 -994 (-6.93427e-300)}
; -1.7149880379361146509609170607291162014007568359375p-639 > -1.160958370012008078475673755747266113758087158203125p-994 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000000 #b1011011100001001011101001011111111110111100000011000)))
(assert (= y (fp #b1 #b00000011101 #b0010100100110100100100010101011100111000000100110010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
