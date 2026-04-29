(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3046254331496680567425983099383302032947540283203125p-982 {+ 1371910987220421 -982 (3.19176e-296)}
; Y = -1.7907430956627068407982505959807895123958587646484375p-524 {- 3561190310972359 -524 (-3.26074e-158)}
; 1.3046254331496680567425983099383302032947540283203125p-982 < -1.7907430956627068407982505959807895123958587646484375p-524 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101001 #b0100110111111011111011101011000011101000010111000101)))
(assert (= y (fp #b1 #b00111110011 #b1100101001101110001000111011011101101000101111000111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
