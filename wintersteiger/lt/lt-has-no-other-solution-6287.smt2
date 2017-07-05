(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.20551056182039051378751537413336336612701416015625p267 {- 925537289635012 267 (-2.85877e+080)}
; Y = 1.0308615476726494808445977469091303646564483642578125p-875 {+ 138988054598621 -875 (4.09217e-264)}
; -1.20551056182039051378751537413336336612701416015625p267 < 1.0308615476726494808445977469091303646564483642578125p-875 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100001010 #b0011010010011100010101110001011000000000010011000100)))
(assert (= y (fp #b0 #b00010010100 #b0000011111100110100010101101100111110101001111011101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
