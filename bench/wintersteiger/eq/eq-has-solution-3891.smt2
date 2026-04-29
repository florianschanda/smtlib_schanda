(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.05952449111601776365887417341582477092742919921875p500 {- 268074476009516 500 (-3.46824e+150)}
; Y = 1.4975468719212710055899151484481990337371826171875p-930 {+ 2240751906983992 -930 (1.65e-280)}
; -1.05952449111601776365887417341582477092742919921875p500 = 1.4975468719212710055899151484481990337371826171875p-930 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110011 #b0000111100111100111111110011111010100111100000101100)))
(assert (= y (fp #b0 #b00001011101 #b0111111101011111001110110101011100100001000000111000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
