(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3875972047889313376600739502464421093463897705078125p-524 {- 1745582627057277 -524 (-2.52665e-158)}
; Y = 1.393292456038068838353183309664018452167510986328125p634 {+ 1771231758460674 634 (9.93252e+190)}
; -1.3875972047889313376600739502464421093463897705078125p-524 < 1.393292456038068838353183309664018452167510986328125p634 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110011 #b0110001100111001100100100000011010010110111001111101)))
(assert (= y (fp #b0 #b11001111001 #b0110010010101110110100000111110001110010011100000010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
