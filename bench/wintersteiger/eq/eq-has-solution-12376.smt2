(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4017510643806605497019290851312689483165740966796875p84 {+ 1809325943840443 84 (2.71138e+025)}
; Y = -1.23945908361057188784570826101116836071014404296875p739 {- 1078427839719052 739 (-3.58426e+222)}
; 1.4017510643806605497019290851312689483165740966796875p84 = -1.23945908361057188784570826101116836071014404296875p739 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010011 #b0110011011011001001010000110001010100101111010111011)))
(assert (= y (fp #b1 #b11011100010 #b0011110101001101001100001100010011010110011010001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
