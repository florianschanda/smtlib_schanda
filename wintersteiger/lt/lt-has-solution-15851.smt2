(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6924148529583227240635778798605315387248992919921875p401 {+ 3118359273768899 401 (8.74048e+120)}
; Y = 1.6363510131826384252917705453000962734222412109375p373 {+ 2865870185846168 373 (3.14822e+112)}
; 1.6924148529583227240635778798605315387248992919921875p401 < 1.6363510131826384252917705453000962734222412109375p373 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010000 #b1011000101000010000110011000110010111000011111000011)))
(assert (= y (fp #b0 #b10101110100 #b1010001011100111111001100110011001100101010110011000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
