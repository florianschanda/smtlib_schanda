(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1256156317362455698827261585392989218235015869140625p872 {- 565722512279265 872 (-3.54443e+262)}
; Y = 1.9298276291722091801972283064969815313816070556640625p520 {+ 4187571364258753 520 (6.62394e+156)}
; -1.1256156317362455698827261585392989218235015869140625p872 = 1.9298276291722091801972283064969815313816070556640625p520 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100111 #b0010000000101000010110001001011000101100011011100001)))
(assert (= y (fp #b0 #b11000000111 #b1110111000001001001011101111101000110110001111000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
