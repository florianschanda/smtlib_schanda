(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7342024867424139511484781905892305076122283935546875p-1017 {+ 3306554045707627 -1017 (1.23479e-306)}
; Y = -1.4312995400312205074300209162174724042415618896484375p734 {- 1942400447769671 734 (-1.29344e+221)}
; 1.7342024867424139511484781905892305076122283935546875p-1017 > -1.4312995400312205074300209162174724042415618896484375p734 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000110 #b1011101111110100101100011011010100110011010101101011)))
(assert (= y (fp #b1 #b11011011101 #b0110111001101001101001011000101100110110110001000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
