(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8649318933816949606097068681265227496623992919921875p-420 {- 3895306952734659 -420 (-6.88755e-127)}
; Y = 1.95679931211500335308528519817627966403961181640625p-69 {+ 4309041025509476 -69 (3.31495e-021)}
; -1.8649318933816949606097068681265227496623992919921875p-420 > 1.95679931211500335308528519817627966403961181640625p-69 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011011 #b1101110101101100001011010011001101010111011111000011)))
(assert (= y (fp #b0 #b01110111010 #b1111010011110000110011001011101001011110100001100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
