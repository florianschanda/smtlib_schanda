(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.601301937148236209651486205984838306903839111328125p216 {+ 2708023180077954 216 (1.68637e+065)}
; Y = -1.7135266226322756200062258358229883015155792236328125p963 {- 3213438231805645 963 (-1.33591e+290)}
; 1.601301937148236209651486205984838306903839111328125p216 < -1.7135266226322756200062258358229883015155792236328125p963 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010111 #b1001100111101110111011000111101100010010101110000010)))
(assert (= y (fp #b1 #b11111000010 #b1011011010101001101011100100010100000111111011001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
