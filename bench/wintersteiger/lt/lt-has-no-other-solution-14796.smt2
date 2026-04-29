(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.60878385336811735584205962368287146091461181640625p604 {+ 2741718735177828 604 (1.06811e+182)}
; Y = 1.696107242255465497038358080317266285419464111328125p622 {+ 3134988316831618 622 (2.95196e+187)}
; 1.60878385336811735584205962368287146091461181640625p604 < 1.696107242255465497038358080317266285419464111328125p622 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011011 #b1001101111011001010000100011010010001100100001100100)))
(assert (= y (fp #b0 #b11001101101 #b1011001000110100000101011000111111111110111110000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
