(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6349946853029688753622394870035350322723388671875p1000 {- 2859761828112696 1000 (-1.75191e+301)}
; Y = -1.8396353944286125692286759658600203692913055419921875p744 {- 3781381649475779 744 (-1.70235e+224)}
; -1.6349946853029688753622394870035350322723388671875p1000 > -1.8396353944286125692286759658600203692913055419921875p744 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100111 #b1010001010001111000000101111111010000010100100111000)))
(assert (= y (fp #b1 #b11011100111 #b1101011011110010010110000101111110100010100011000011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
