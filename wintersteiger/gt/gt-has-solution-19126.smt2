(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.54490806992759122096003920887596905231475830078125p1023 {+ 2454047780677076 1023 (1.38864e+308)}
; Y = 1.9171934620140664851106748756137676537036895751953125p190 {+ 4130672133753205 190 (3.0086e+057)}
; 1.54490806992759122096003920887596905231475830078125p1023 > 1.9171934620140664851106748756137676537036895751953125p190 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111110 #b1000101101111111000110000110001110101010010111010100)))
(assert (= y (fp #b0 #b10010111101 #b1110101011001101001100001101001101110100100101110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
