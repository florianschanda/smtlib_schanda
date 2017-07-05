(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6322166241381423912315540292183868587017059326171875p701 {+ 2847250552885971 701 (1.71714e+211)}
; Y = 1.639882670398256525601254907087422907352447509765625p19 {+ 2881775355966426 19 (859771)}
; 1.6322166241381423912315540292183868587017059326171875p701 > 1.639882670398256525601254907087422907352447509765625p19 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010111100 #b1010000111011000111100101101110010101001001011010011)))
(assert (= y (fp #b0 #b10000010010 #b1010001111001111010110011100011010100011001111011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
