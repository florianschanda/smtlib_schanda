(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.85791804291267936832809937186539173126220703125p418 {+ 3863719378375968 418 (1.25766e+126)}
; Y = 1.64804511973323997153784148395061492919921875p-810 {+ 2918535759749888 -810 (2.41364e-244)}
; 1.85791804291267936832809937186539173126220703125p418 > 1.64804511973323997153784148395061492919921875p-810 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110100001 #b1101101110100000100001000101000011110101010100100000)))
(assert (= y (fp #b0 #b00011010101 #b1010010111100110010010001111001110010110001100000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
