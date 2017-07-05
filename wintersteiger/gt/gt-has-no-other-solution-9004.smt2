(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.07149681740464330914619495160877704620361328125p-95 {- 321993040221728 -95 (-2.70484e-029)}
; Y = 1.6401699943927730007686704993830062448978424072265625p-522 {+ 2883069348201065 -522 (1.19462e-157)}
; -1.07149681740464330914619495160877704620361328125p-95 > 1.6401699943927730007686704993830062448978424072265625p-522 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100000 #b0001001001001101100111011000110010000101011000100000)))
(assert (= y (fp #b0 #b00111110101 #b1010001111100010001011100100010111001100001001101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
