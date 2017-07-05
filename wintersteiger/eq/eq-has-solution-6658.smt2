(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.34589596785723841776416520588099956512451171875p167 {- 1557776951950816 167 (-2.5178e+050)}
; Y = -1.8496622535905491435670455757644958794116973876953125p-67 {- 3826538608661173 -67 (-1.25338e-020)}
; -1.34589596785723841776416520588099956512451171875p167 = -1.8496622535905491435670455757644958794116973876953125p-67 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100110 #b0101100010001100101000110101110111000011110111100000)))
(assert (= y (fp #b1 #b01110111100 #b1101100110000011011101110010011111010001001010110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
