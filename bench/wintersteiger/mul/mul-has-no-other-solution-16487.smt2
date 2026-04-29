(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0929917577939864958835869401809759438037872314453125p956 {- 418797645749525 956 (-6.65722e+287)}
; Y = -1.0926773732419159390616414384567178785800933837890625p206 {- 417381783597969 206 (-1.12375e+062)}
; -1.0929917577939864958835869401809759438037872314453125p956 * -1.0926773732419159390616414384567178785800933837890625p206 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111011 #b0001011111001110010011101100111010000101110100010101)))
(assert (= y (fp #b1 #b10011001101 #b0001011110111001101101000100111100100111001110010001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
