(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.030350106662844655858179976348765194416046142578125p-533 {- 136684729057442 -533 (-3.66435e-161)}
; Y = -1.1759529049516899146254900188068859279155731201171875p-157 {- 792421437175187 -157 (-6.43696e-048)}
; -1.030350106662844655858179976348765194416046142578125p-533 < -1.1759529049516899146254900188068859279155731201171875p-157 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101010 #b0000011111000101000001100100101110001100000010100010)))
(assert (= y (fp #b1 #b01101100010 #b0010110100001011001111111110010001100111010110010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
