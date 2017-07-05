(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9058908425367224737101423670537769794464111328125p-883 {- 4079769660886728 -883 (-2.95537e-266)}
; Y = 1.89443660004916836214761133305728435516357421875p967 {+ 4028184338687968 967 (2.36312e+291)}
; -1.9058908425367224737101423670537769794464111328125p-883 < 1.89443660004916836214761133305728435516357421875p967 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001100 #b1110011111101000011101100101011001110000111011001000)))
(assert (= y (fp #b0 #b11111000110 #b1110010011111001110011000000100110001110011111100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
