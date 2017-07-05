(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0695958838408829993937843028106726706027984619140625p-937 {- 313431996532321 -937 (-9.20691e-283)}
; Y = -1.7449183565555628216969807908753864467144012451171875p-1017 {- 3354814033005075 -1017 (-1.24242e-306)}
; -1.0695958838408829993937843028106726706027984619140625p-937 > -1.7449183565555628216969807908753864467144012451171875p-1017 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010110 #b0001000111010001000010010010110100001000011001100001)))
(assert (= y (fp #b1 #b00000000110 #b1011111010110010111110000010101110011000101000010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
