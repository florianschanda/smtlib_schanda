(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.94364075350026599409147820551879703998565673828125p127 {- 4249780145835412 127 (-3.30693e+038)}
; Y = 1.72592801662339834223303114413283765316009521484375p-77 {+ 3269289145162940 -77 (1.14212e-023)}
; -1.94364075350026599409147820551879703998565673828125p127 < 1.72592801662339834223303114413283765316009521484375p-77 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001111110 #b1111000110010010011100001011111101110100110110010100)))
(assert (= y (fp #b0 #b01110110010 #b1011100111010110011010110010001010100101110010111100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
