(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5557523363072609523527489727712236344814300537109375p87 {+ 2502886014703663 87 (2.40741e+026)}
; Y = 1.7107057969018988341503018091316334903240203857421875p482 {+ 3200734362097443 482 (2.13616e+145)}
; 1.5557523363072609523527489727712236344814300537109375p87 < 1.7107057969018988341503018091316334903240203857421875p482 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010110 #b1000111001000101110010001111110100011101100000101111)))
(assert (= y (fp #b0 #b10111100001 #b1011010111110000110100001010101011000101011100100011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
