(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.0780962421284832064571901355520822107791900634765625p-1022 {- 351714206948873 -1023 (-1.7377e-309)}
; Y = 1.63021261049234578166533538023941218852996826171875p-770 {+ 2838225277777516 -770 (2.62511e-232)}
; -0.0780962421284832064571901355520822107791900634765625p-1022 > 1.63021261049234578166533538023941218852996826171875p-770 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0001001111111110000111011000010111100001111000001001)))
(assert (= y (fp #b0 #b00011111101 #b1010000101010101100111010001011110010111011001101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
