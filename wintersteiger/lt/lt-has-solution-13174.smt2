(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6337850913590283852272477815859019756317138671875p852 {+ 2854314301277496 852 (4.90627e+256)}
; Y = 1.6088828027450861046787622399278916418552398681640625p-1010 {+ 2742164363555073 -1010 (1.46632e-304)}
; 1.6337850913590283852272477815859019756317138671875p852 < 1.6088828027450861046787622399278916418552398681640625p-1010 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101010011 #b1010001000111111101111010110000000010100010100111000)))
(assert (= y (fp #b0 #b00000001101 #b1001101111011111101111100100110011100011000100000001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
