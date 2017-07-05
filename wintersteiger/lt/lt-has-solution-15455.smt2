(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8557810594272472481947033884353004395961761474609375p-979 {+ 3854095260347279 -979 (3.63213e-295)}
; Y = 0.9179244207803101129883316389168612658977508544921875p-1022 {+ 4133964079380483 -1023 (2.04245e-308)}
; 1.8557810594272472481947033884353004395961761474609375p-979 < 0.9179244207803101129883316389168612658977508544921875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101100 #b1101101100010100011101111010111011000110101110001111)))
(assert (= y (fp #b0 #b00000000000 #b1110101011111101000110000100011101110011100000000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
