(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.523192048526129216412527966895140707492828369140625p-556 {- 2356247514785482 -556 (-6.45769e-168)}
; Y = -1.1378364526185051897044786528567783534526824951171875p-32 {- 620760196650771 -32 (-2.64923e-010)}
; -1.523192048526129216412527966895140707492828369140625p-556 = -1.1378364526185051897044786528567783534526824951171875p-32 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010011 #b1000010111101111111010100000000111110010011011001010)))
(assert (= y (fp #b1 #b01111011111 #b0010001101001001001111111111000000110001011100010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
