(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.181626817991695332921153749339282512664794921875p950 {- 817974469827888 950 (-1.12454e+286)}
; Y = 1.2262837707095710637617003158084116876125335693359375p132 {+ 1019091505447615 132 (6.67652e+039)}
; Z = 1.19776403908485207239209557883441448211669921875p-915 {+ 890650052729824 -915 (4.32439e-276)}
; -1.181626817991695332921153749339282512664794921875p950 x 1.2262837707095710637617003158084116876125335693359375p132 1.19776403908485207239209557883441448211669921875p-915 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110110101 #b0010111001111111000110000101101101011001110100110000)))
(assert (= y (fp #b0 #b10010000011 #b0011100111101101101110111011001011010000001010111111)))
(assert (= z (fp #b0 #b00001101100 #b0011001010100000101010100000000000110001101111100000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
