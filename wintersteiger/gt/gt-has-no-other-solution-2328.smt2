(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.861461610992938719988387674675323069095611572265625p-857 {+ 3879678190261786 -857 (1.93708e-258)}
; Y = 1.536380237476699495147158813779242336750030517578125p-830 {+ 2415641837628962 -830 (2.14586e-250)}
; 1.861461610992938719988387674675323069095611572265625p-857 > 1.536380237476699495147158813779242336750030517578125p-830 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100110 #b1101110010001000101111111000010111111001011000011010)))
(assert (= y (fp #b0 #b00011000001 #b1000100101010000001101110001101000101110111000100010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
