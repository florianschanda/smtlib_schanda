(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7745207454567104576881320099346339702606201171875p-61 {+ 3488131340629560 -61 (7.69576e-019)}
; Y = -1.9770548416889843768018408809439279139041900634765625p-296 {- 4400263820951049 -296 (-1.55289e-089)}
; 1.7745207454567104576881320099346339702606201171875p-61 < -1.9770548416889843768018408809439279139041900634765625p-296 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000010 #b1100011001000110111111011101011111001111011000111000)))
(assert (= y (fp #b1 #b01011010111 #b1111101000100000010001000001111101110011111000001001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
