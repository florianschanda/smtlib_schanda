(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3528799213454536509715353531646542251110076904296875p622 {+ 1589229882277915 622 (2.3546e+187)}
; Y = -1.1694148200579854712799487970187328755855560302734375p-649 {- 762976520484183 -649 (-5.00612e-196)}
; 1.3528799213454536509715353531646542251110076904296875p622 < -1.1694148200579854712799487970187328755855560302734375p-649 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101101 #b0101101001010110010101101010100110011000000000011011)))
(assert (= y (fp #b1 #b00101110110 #b0010101101011110110001010000011110011011010101010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
