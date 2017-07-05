(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.502372287787157478788913067546673119068145751953125p380 {+ 2262483648079506 380 (3.69978e+114)}
; Y = -1.7290245035827112030091257111052982509136199951171875p545 {- 3283234482679059 545 (-1.99136e+164)}
; 1.502372287787157478788913067546673119068145751953125p380 = -1.7290245035827112030091257111052982509136199951171875p545 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111011 #b1000000010011011011110000110001001110110011010010010)))
(assert (= y (fp #b1 #b11000100000 #b1011101010100001010110011001000011011110110100010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
