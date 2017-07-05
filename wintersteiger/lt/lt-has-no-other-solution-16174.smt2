(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.89934711491716967657339409925043582916259765625p665 {- 4050299331617696 665 (-2.90771e+200)}
; Y = -1.2480828960175409658717171623720787465572357177734375p600 {- 1117266038061591 600 (-5.17894e+180)}
; -1.89934711491716967657339409925043582916259765625p665 < -1.2480828960175409658717171623720787465572357177734375p600 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011000 #b1110011000111011100111001100111001010010001110100000)))
(assert (= y (fp #b1 #b11001010111 #b0011111110000010010111000101010100010111101000010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
