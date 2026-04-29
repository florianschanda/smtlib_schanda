(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6780233148513683527625062197330407798290252685546875p43 {- 3053545548113131 43 (-1.476e+013)}
; Y = -zero {- 0 -1023 (-0)}
; -1.6780233148513683527625062197330407798290252685546875p43 + -zero == -1.6780233148513683527625062197330407798290252685546875p43
; [HW: -1.6780233148513683527625062197330407798290252685546875p43] 

; mpf : - 3053545548113131 43
; mpfd: - 3053545548113131 43 (-1.476e+013) class: Neg. norm. non-zero
; hwf : - 3053545548113131 43 (-1.476e+013) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101010 #b1010110110010010111011111001101100110110010011101011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b10000101010 #b1010110110010010111011111001101100110110010011101011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
