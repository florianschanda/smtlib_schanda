(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7823397465015611285110708195134066045284271240234375p103 {+ 3523344990821559 103 (1.80751e+031)}
; Y = 1.9434881975789053409897633173386566340923309326171875p-808 {+ 4249093095044819 -808 (1.13853e-243)}
; 1.7823397465015611285110708195134066045284271240234375p103 < 1.9434881975789053409897633173386566340923309326171875p-808 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100110 #b1100100001000111011010101110100110010101110010110111)))
(assert (= y (fp #b0 #b00011010111 #b1111000110001000011100010100100011000011011011010011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
