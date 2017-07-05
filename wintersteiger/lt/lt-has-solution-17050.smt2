(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.498623055715314844604790778248570859432220458984375p285 {- 2245598607917830 285 (-9.31625e+085)}
; Y = -1.2543992234864773660518721953849308192729949951171875p308 {- 1145712248097043 308 (-6.54146e+092)}
; -1.498623055715314844604790778248570859432220458984375p285 < -1.2543992234864773660518721953849308192729949951171875p308 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011100 #b0111111110100101110000101011010101010100001100000110)))
(assert (= y (fp #b1 #b10100110011 #b0100000100100000010011101011100100000000100100010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
