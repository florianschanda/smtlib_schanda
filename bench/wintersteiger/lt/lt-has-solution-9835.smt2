(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7115003883251815874899648406426422297954559326171875p-281 {- 3204312883735251 -281 (-4.40502e-085)}
; Y = 1.863700997188372898705210900516249239444732666015625p425 {+ 3889763489097082 425 (1.61482e+128)}
; -1.7115003883251815874899648406426422297954559326171875p-281 < 1.863700997188372898705210900516249239444732666015625p425 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100110 #b1011011000100100111000111011001011110010101011010011)))
(assert (= y (fp #b0 #b10110101000 #b1101110100011011100000100011000001110010010101111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
