(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5798741501888036165013318168348632752895355224609375p-215 {+ 2611521006712079 -215 (3.00036e-065)}
; Y = -1.37595466298782032055214585852809250354766845703125p61 {- 1693149280140148 61 (-3.17274e+018)}
; 1.5798741501888036165013318168348632752895355224609375p-215 = -1.37595466298782032055214585852809250354766845703125p61 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101000 #b1001010001110010101000011101111011011011010100001111)))
(assert (= y (fp #b1 #b10000111100 #b0110000000111110100100001001011001001111101101110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
