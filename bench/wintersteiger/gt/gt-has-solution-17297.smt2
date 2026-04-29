(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.162272672240108217778242760687135159969329833984375p309 {+ 730811146232966 309 (1.21221e+093)}
; Y = -1.610345839688761326868871037731878459453582763671875p43 {- 2748753296189438 43 (-1.41648e+013)}
; 1.162272672240108217778242760687135159969329833984375p309 > -1.610345839688761326868871037731878459453582763671875p43 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110100 #b0010100110001010101100111010110001001110010010000110)))
(assert (= y (fp #b1 #b10000101010 #b1001110000111111100111111111110010110110011111111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
