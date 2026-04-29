(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1698832812863735330921599597786553204059600830078125p-537 {+ 765086282297789 -537 (2.60037e-162)}
; Y = 1.208065025802245617825292356428690254688262939453125p-623 {+ 937041572671826 -623 (3.47059e-188)}
; 1.1698832812863735330921599597786553204059600830078125p-537 < 1.208065025802245617825292356428690254688262939453125p-623 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111100110 #b0010101101111101011110001000000101000011000110111101)))
(assert (= y (fp #b0 #b00110010000 #b0011010101000011101111111110000101000011000101010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
