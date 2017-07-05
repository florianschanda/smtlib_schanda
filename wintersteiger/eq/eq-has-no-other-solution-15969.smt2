(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6645707222013472748045614935108460485935211181640625p937 {+ 2992960456867329 937 (1.93379e+282)}
; Y = 1.1663303094832555562021525474847294390201568603515625p761 {+ 749085119809209 761 (1.41465e+229)}
; 1.6645707222013472748045614935108460485935211181640625p937 = 1.1663303094832555562021525474847294390201568603515625p761 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101000 #b1010101000100001010011101000110110111011111000000001)))
(assert (= y (fp #b0 #b11011111000 #b0010101010010100100111111000011110010000011010111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
