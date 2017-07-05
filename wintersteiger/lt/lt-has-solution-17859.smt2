(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6537666372493198263526892333175055682659149169921875p-50 {- 2944303183903299 -50 (-1.46884e-015)}
; Y = 1.95735049507971314852738942136056721210479736328125p43 {+ 4311523332903956 43 (1.7217e+013)}
; -1.6537666372493198263526892333175055682659149169921875p-50 < 1.95735049507971314852738942136056721210479736328125p43 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001101 #b1010011101011101010000000001011000110011101001000011)))
(assert (= y (fp #b0 #b10000101010 #b1111010100010100111011000000101100101101010000010100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
