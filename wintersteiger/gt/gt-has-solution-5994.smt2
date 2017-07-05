(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2389485679643266191618522498174570500850677490234375p976 {+ 1076128681644855 976 (7.91278e+293)}
; Y = -1.5937550936486932773306079980102367699146270751953125p-909 {- 2674035218505589 -909 (-3.68261e-274)}
; 1.2389485679643266191618522498174570500850677490234375p976 > -1.5937550936486932773306079980102367699146270751953125p-909 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111001111 #b0011110100101011101110111011110011010101001100110111)))
(assert (= y (fp #b1 #b00001110010 #b1001100000000000010101010111010100001101111101110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
