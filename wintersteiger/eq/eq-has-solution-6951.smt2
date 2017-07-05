(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8467432346541137189177561594988219439983367919921875p716 {+ 3813392516066755 716 (6.36625e+215)}
; Y = 1.03335591367916546090555129921995103359222412109375p-929 {+ 150221680416092 -929 (2.27711e-280)}
; 1.8467432346541137189177561594988219439983367919921875p716 = 1.03335591367916546090555129921995103359222412109375p-929 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001011 #b1101100011000100001010100010010011110010110111000011)))
(assert (= y (fp #b0 #b00001011110 #b0000100010001010000000110101111001100001010101011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
