(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.02798561957558742818719110800884664058685302734375p861 {+ 126036025892348 861 (1.58057e+259)}
; Y = -1.7421619364408920116460421922965906560420989990234375p945 {- 3342400220403767 945 (-5.18125e+284)}
; 1.02798561957558742818719110800884664058685302734375p861 < -1.7421619364408920116460421922965906560420989990234375p945 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011100 #b0000011100101010000100001100100011010101110111111100)))
(assert (= y (fp #b1 #b11110110000 #b1011110111111110010100110001110101011001100000110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
