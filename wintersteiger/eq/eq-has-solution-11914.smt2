(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2115891639363927101413764830795116722583770751953125p1002 {+ 952912879859573 1002 (5.19291e+301)}
; Y = 1.2679296743537944447410836801282130181789398193359375p995 {+ 1206647981581247 995 (4.24562e+299)}
; 1.2115891639363927101413764830795116722583770751953125p1002 = 1.2679296743537944447410836801282130181789398193359375p995 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101001 #b0011011000101010101101010001101101001011011101110101)))
(assert (= y (fp #b0 #b11111100010 #b0100010010010111000010100000010011111010001110111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
