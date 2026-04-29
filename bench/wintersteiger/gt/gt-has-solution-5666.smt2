(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.150569087460752815132991599966771900653839111328125p380 {- 678102886181762 380 (-2.83342e+114)}
; Y = 1.453831194547754446233511771424673497676849365234375p310 {+ 2043873998654374 310 (3.03258e+093)}
; -1.150569087460752815132991599966771900653839111328125p380 > 1.453831194547754446233511771424673497676849365234375p310 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b0010011010001011101100100001101001101110101110000010)))
(assert (= y (fp #b0 #b10100110101 #b0111010000101110010001111111101001111100101110100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
