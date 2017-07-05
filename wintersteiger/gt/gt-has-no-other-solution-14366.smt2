(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9030420064045336925317997156525962054729461669921875p500 {- 4066939643543363 500 (-6.2294e+150)}
; Y = -1.7986476630314438551749844918958842754364013671875p-721 {- 3596789317628728 -721 (-1.63049e-217)}
; -1.9030420064045336925317997156525962054729461669921875p500 > -1.7986476630314438551749844918958842754364013671875p-721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110011 #b1110011100101101110000101100110001101011111101000011)))
(assert (= y (fp #b1 #b00100101110 #b1100110001110100001011000101100110111111001100111000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
