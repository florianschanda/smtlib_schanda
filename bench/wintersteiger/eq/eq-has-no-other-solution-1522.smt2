(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.671103151463113167807250647456385195255279541015625p-673 {- 3022379902856442 -673 (-4.26399e-203)}
; Y = 1.20378058530885123644793566199950873851776123046875p-899 {+ 917746168062284 -899 (2.84827e-271)}
; -1.671103151463113167807250647456385195255279541015625p-673 = 1.20378058530885123644793566199950873851776123046875p-899 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011110 #b1010101111001101011010101000011111000110110011111010)))
(assert (= y (fp #b0 #b00001111100 #b0011010000101010111101101110010101110110000101001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
