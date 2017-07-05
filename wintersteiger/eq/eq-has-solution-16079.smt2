(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2502795922212281976015901818755082786083221435546875p735 {+ 1127159078265963 735 (2.25972e+221)}
; Y = -1.775394150271567550447571193217299878597259521484375p621 {- 3492064806228294 621 (-1.54498e+187)}
; 1.2502795922212281976015901818755082786083221435546875p735 = -1.775394150271567550447571193217299878597259521484375p621 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011110 #b0100000000010010010100101100011101110010010001101011)))
(assert (= y (fp #b1 #b11001101100 #b1100011010000000001110110010010011101101000101000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
