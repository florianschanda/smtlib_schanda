(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2176762730807058066062609213986434042453765869140625p-592 {+ 980326782333665 -592 (7.51233e-179)}
; Y = 0.5195063167493729761048371074139140546321868896484375p-1022 {+ 2339648454529095 -1023 (1.15594e-308)}
; 1.2176762730807058066062609213986434042453765869140625p-592 < 0.5195063167493729761048371074139140546321868896484375p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101111 #b0011011110111001101000011101100111111111001011100001)))
(assert (= y (fp #b0 #b00000000000 #b1000010011111110010111011011000010000001000001000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
