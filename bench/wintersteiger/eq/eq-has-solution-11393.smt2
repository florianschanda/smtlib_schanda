(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5586624011100294051601622413727454841136932373046875p-391 {- 2515991781465035 -391 (-3.09046e-118)}
; Y = 1.552413698574844236333092339918948709964752197265625p310 {+ 2487850127056026 310 (3.23822e+093)}
; -1.5586624011100294051601622413727454841136932373046875p-391 = 1.552413698574844236333092339918948709964752197265625p310 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111000 #b1000111100000100011111111100011001000101101111001011)))
(assert (= y (fp #b0 #b10100110101 #b1000110101101010111110111111000100111101110010011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
