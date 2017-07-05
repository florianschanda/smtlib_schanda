(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.577759215818432370070922843297012150287628173828125p632 {- 2601996189069762 632 (-2.81189e+190)}
; Y = -1.1485687143436973389754029994946904480457305908203125p393 {- 669094006557189 393 (-2.3171e+118)}
; -1.577759215818432370070922843297012150287628173828125p632 < -1.1485687143436973389754029994946904480457305908203125p393 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110111 #b1001001111101000000001110010100011100111000111000010)))
(assert (= y (fp #b1 #b10110001000 #b0010011000001000100110010110100101010000101000000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
