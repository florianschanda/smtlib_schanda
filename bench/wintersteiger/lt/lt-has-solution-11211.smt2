(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.570890712050818205369751012767665088176727294921875p242 {- 2571063198061342 242 (-1.11021e+073)}
; Y = 1.063645092945279202467645518481731414794921875p-300 {+ 286632016872320 -300 (5.22153e-091)}
; -1.570890712050818205369751012767665088176727294921875p242 < 1.063645092945279202467645518481731414794921875p-300 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110001 #b1001001000100101111001001100100111011001001100011110)))
(assert (= y (fp #b0 #b01011010011 #b0001000001001011000010110111100011000000001110000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
