(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -0.28082114460156315516314862179569900035858154296875p-1022 {- 1264706002185356 -1023 (-6.24848e-309)}
; Y = 1.726095835167112735319960847846232354640960693359375p-411 {+ 3270044932693878 -411 (3.2639e-124)}
; -0.28082114460156315516314862179569900035858154296875p-1022 < 1.726095835167112735319960847846232354640960693359375p-411 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0100011111100011111001010000000000010110110010001100)))
(assert (= y (fp #b0 #b01001100100 #b1011100111100001011010101010100111001101111101110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
