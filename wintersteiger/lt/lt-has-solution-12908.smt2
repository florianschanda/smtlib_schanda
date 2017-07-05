(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.28055551978311310534763833857141435146331787109375p-945 {- 1263509734351964 -945 (-4.30579e-285)}
; Y = -1.2831333363241881340144345813314430415630340576171875p500 {- 1275119187965779 500 (-4.2002e+150)}
; -1.28055551978311310534763833857141435146331787109375p-945 < -1.2831333363241881340144345813314430415630340576171875p500 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001110 #b0100011111010010011111001000111000101110010001011100)))
(assert (= y (fp #b1 #b10111110011 #b0100100001111011011011010010001111101011011101010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
