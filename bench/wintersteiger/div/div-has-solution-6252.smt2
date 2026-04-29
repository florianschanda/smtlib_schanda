(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4109534482385914788693526134011335670948028564453125p992 {+ 1850769796353941 992 (5.90566e+298)}
; Y = -1.718334193329102532743490883149206638336181640625p-126 {- 3235089605404432 -126 (-2.01989e-038)}
; 1.4109534482385914788693526134011335670948028564453125p992 / -1.718334193329102532743490883149206638336181640625p-126 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011111 #b0110100100110100001111101100010001011100111110010101)))
(assert (= y (fp #b1 #b01110000001 #b1011011111100100101111111110101111110010011100010000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
