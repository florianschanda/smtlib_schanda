(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.177507117193143937328159154276363551616668701171875p984 {+ 799420986846654 984 (1.92522e+296)}
; Y = -1.1698175120382077185610114611336030066013336181640625p-956 {- 764790083936257 -956 (-1.92062e-288)}
; 1.177507117193143937328159154276363551616668701171875p984 / -1.1698175120382077185610114611336030066013336181640625p-956 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010111 #b0010110101110001000110110011111100100110110110111110)))
(assert (= y (fp #b1 #b00001000011 #b0010101101111001001010010001010001111110000000000001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
