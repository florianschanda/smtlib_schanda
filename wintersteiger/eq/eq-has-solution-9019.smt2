(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8990232657146892680799510344513691961765289306640625p387 {- 4048840844470081 387 (-5.98603e+116)}
; Y = 1.2105055712045651450381456015747971832752227783203125p-923 {+ 948032812036293 -923 (1.70719e-278)}
; -1.8990232657146892680799510344513691961765289306640625p387 = 1.2105055712045651450381456015747971832752227783203125p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000010 #b1110011000100110011000111000010010010110011101000001)))
(assert (= y (fp #b0 #b00001100100 #b0011010111100011101100010110111111110011000011000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
