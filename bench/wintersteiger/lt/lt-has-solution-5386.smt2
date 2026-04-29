(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1877769035184158052942393624107353389263153076171875p-336 {- 845671992714323 -336 (-8.48509e-102)}
; Y = -1.480031241879623760127060450031422078609466552734375p-933 {- 2161868522055270 -933 (-2.03838e-281)}
; -1.1877769035184158052942393624107353389263153076171875p-336 < -1.480031241879623760127060450031422078609466552734375p-933 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101111 #b0011000000010010001001011010101110001110010001010011)))
(assert (= y (fp #b1 #b00001011010 #b0111101011100011010100111101010011101110011001100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
