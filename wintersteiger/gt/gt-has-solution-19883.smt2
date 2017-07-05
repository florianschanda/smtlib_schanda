(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4560553278331258564293193558114580810070037841796875p707 {- 2053890604489595 707 (-9.80358e+212)}
; Y = -1.166291420362250530473602339043281972408294677734375p217 {- 748909978778342 217 (-2.4565e+065)}
; -1.4560553278331258564293193558114580810070037841796875p707 > -1.166291420362250530473602339043281972408294677734375p217 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000010 #b0111010011000000000010101011111000110101101101111011)))
(assert (= y (fp #b1 #b10011011000 #b0010101010010010000100110001010000001111101011100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
