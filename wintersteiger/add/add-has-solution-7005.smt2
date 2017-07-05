(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0506901231495777704338934199768118560314178466796875p44 {- 228288019727803 44 (-1.84839e+013)}
; Y = 1.2461013636084656841518381042988039553165435791015625p969 {+ 1108342009442457 969 (6.21755e+291)}
; -1.0506901231495777704338934199768118560314178466796875p44 + 1.2461013636084656841518381042988039553165435791015625p969 == 1.2461013636084654621072331792674958705902099609375p969
; [HW: 1.2461013636084654621072331792674958705902099609375p969] 

; mpf : + 1108342009442456 969
; mpfd: + 1108342009442456 969 (6.21755e+291) class: Pos. norm. non-zero
; hwf : + 1108342009442456 969 (6.21755e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101011 #b0000110011111010000001110010010100101000010110111011)))
(assert (= y (fp #b0 #b11111001000 #b0011111100000000011111111011110000110011000010011001)))
(assert (= r (fp #b0 #b11111001000 #b0011111100000000011111111011110000110011000010011000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
