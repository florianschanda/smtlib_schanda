(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6878019246029596356351021313457749783992767333984375p200 {- 3097584491346599 200 (-2.71219e+060)}
; Y = -1.7655010885684283561403162821079604327678680419921875p555 {- 3447510417228483 555 (-2.08217e+167)}
; -1.6878019246029596356351021313457749783992767333984375p200 < -1.7655010885684283561403162821079604327678680419921875p555 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011000111 #b1011000000010011110010010111010001001011101010100111)))
(assert (= y (fp #b1 #b11000101010 #b1100001111110111111000010001110001110100001011000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
