(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5447424764753698855912489307229407131671905517578125p802 {+ 2453302014067357 802 (4.12015e+241)}
; Y = 1.9156679462824255377739746109000407159328460693359375p-616 {+ 4123801821672639 -616 (7.04438e-186)}
; 1.5447424764753698855912489307229407131671905517578125p802 = 1.9156679462824255377739746109000407159328460693359375p-616 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100001 #b1000101101110100001111100011000100110100001010011101)))
(assert (= y (fp #b0 #b00110010111 #b1110101001101001001101101110101101000111010010111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
