(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.84953361498405310925363664864562451839447021484375p411 {+ 3825959271880892 411 (9.78116e+123)}
; Y = 1.149655659716291911109919965383596718311309814453125p-26 {+ 673989173332178 -26 (1.71312e-008)}
; 1.84953361498405310925363664864562451839447021484375p411 < 1.149655659716291911109919965383596718311309814453125p-26 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011010 #b1101100101111011000010001111010100110101100010111100)))
(assert (= y (fp #b0 #b01111100101 #b0010011001001111110101010101010000100100100011010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
