(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.711254831991770419818976733949966728687286376953125p337 {- 3203206996323602 337 (-4.79097e+101)}
; Y = -1.1300709613162560618349061769549734890460968017578125p149 {- 585787532915613 149 (-8.06446e+044)}
; -1.711254831991770419818976733949966728687286376953125p337 > -1.1300709613162560618349061769549734890460968017578125p149 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010000 #b1011011000010100110010111111001010000110110100010010)))
(assert (= y (fp #b1 #b10010010100 #b0010000101001100010101001001110100000011001110011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
