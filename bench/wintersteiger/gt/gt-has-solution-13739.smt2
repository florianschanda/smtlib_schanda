(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3693899752606260022957940236665308475494384765625p246 {+ 1663584554938152 246 (1.54848e+074)}
; Y = 1.834332450389794200162896231631748378276824951171875p164 {+ 3757499312678590 164 (4.28941e+049)}
; 1.3693899752606260022957940236665308475494384765625p246 > 1.834332450389794200162896231631748378276824951171875p164 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110101 #b0101111010010000010101110110011100110110111100101000)))
(assert (= y (fp #b0 #b10010100011 #b1101010110010110110011111011110001101010011010111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
