(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.16314738076373647146510847960598766803741455078125p81 {+ 734750483214036 81 (2.81232e+024)}
; Y = 1.38913710432724446519614502904005348682403564453125p-607 {+ 1752517718044212 -607 (2.6154e-183)}
; 1.16314738076373647146510847960598766803741455078125p81 = 1.38913710432724446519614502904005348682403564453125p-607 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010000 #b0010100111000100000001101101100011001110111011010100)))
(assert (= y (fp #b0 #b00110100000 #b0110001110011110011111010100000010111110111000110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
