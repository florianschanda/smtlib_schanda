(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.446379988092231894114547685603611171245574951171875p109 {- 2010316748037822 109 (-9.38754e+032)}
; Y = 1.828760718228137793772702934802509844303131103515625p-830 {+ 3732406461791546 -830 (2.55423e-250)}
; -1.446379988092231894114547685603611171245574951171875p109 = 1.828760718228137793772702934802509844303131103515625p-830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001101100 #b0111001001000101111101010111101001110001111010111110)))
(assert (= y (fp #b0 #b00011000001 #b1101010000101001101010011001010011111111110100111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
