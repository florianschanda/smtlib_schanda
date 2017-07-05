(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8141209270712579382234252989292144775390625p1011 {- 3666474703792640 1011 (-3.981e+304)}
; Y = 1.3450992367495644419506106714834459125995635986328125p798 {+ 1554188794031181 798 (2.24229e+240)}
; -1.8141209270712579382234252989292144775390625p1011 % 1.3450992367495644419506106714834459125995635986328125p798 == -1.274205906425630363543177736573852598667144775390625p798
; [HW: -1.274205906425630363543177736573852598667144775390625p798] 

; mpf : - 1234913618001258 798
; mpfd: - 1234913618001258 798 (-2.12411e+240) class: Neg. norm. non-zero
; hwf : - 1234913618001258 798 (-2.12411e+240) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110010 #b1101000001101010001110101010010011000010101000000000)))
(assert (= y (fp #b0 #b11100011101 #b0101100001011000011011000110111110110110110001001101)))
(assert (= r (fp #b0 #b11100011001 #x22610b73eee30)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
