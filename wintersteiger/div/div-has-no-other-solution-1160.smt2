(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6082024888187864686273087500012479722499847412109375p-890 {- 2739100502010095 -890 (-1.94825e-268)}
; Y = 1.6140675187695492365236304976860992610454559326171875p926 {+ 2765514248710867 926 (9.15583e+278)}
; -1.6082024888187864686273087500012479722499847412109375p-890 / 1.6140675187695492365236304976860992610454559326171875p926 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000101 #b1001101110110011001010001000011011010010100011101111)))
(assert (= y (fp #b0 #b11110011101 #b1001110100110011100001110110011010100110101011010011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
