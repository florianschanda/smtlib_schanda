(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2438063475560265924713121421518735587596893310546875p718 {+ 1098006176003883 718 (1.7151e+216)}
; Y = 1.29486984448028774608019375591538846492767333984375p-650 {+ 1327975721724220 -650 (2.77159e-196)}
; 1.2438063475560265924713121421518735587596893310546875p718 < 1.29486984448028774608019375591538846492767333984375p-650 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001101 #b0011111001101010000101111100000101001111011100101011)))
(assert (= y (fp #b0 #b00101110101 #b0100101101111100100101110001001010011110100100111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
