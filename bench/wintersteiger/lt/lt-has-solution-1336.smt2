(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4810420331090181633726388099603354930877685546875p726 {+ 2166420721059320 726 (5.2281e+218)}
; Y = 1.474097962355548130375382243073545396327972412109375p158 {+ 2135147406601558 158 (5.38599e+047)}
; 1.4810420331090181633726388099603354930877685546875p726 < 1.474097962355548130375382243073545396327972412109375p158 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010101 #b0111101100100101100100100001100000110100010111111000)))
(assert (= y (fp #b0 #b10010011101 #b0111100101011110011110111110101101101010110101010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
