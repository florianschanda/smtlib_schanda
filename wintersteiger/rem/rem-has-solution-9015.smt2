(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1516999650389652121162953335442580282688140869140625p827 {- 683195906021601 827 (-1.03073e+249)}
; Y = 1.338735458038943448855206952430307865142822265625p-518 {+ 1525528882601360 -518 (1.56012e-156)}
; -1.1516999650389652121162953335442580282688140869140625p827 % 1.338735458038943448855206952430307865142822265625p-518 == -1.1129645118731872344142175279557704925537109375p-520
; [HW: -1.1129645118731872344142175279557704925537109375p-520] 

; mpf : - 508746933578176 -520
; mpfd: - 508746933578176 -520 (-3.24253e-157) class: Neg. norm. non-zero
; hwf : - 508746933578176 -520 (-3.24253e-157) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111010 #b0010011011010101110011110001010010100101100011100001)))
(assert (= y (fp #b0 #b00111111001 #b0101011010110111010111011111001001000101110110010000)))
(assert (= r (fp #b1 #b00111110111 #x1ceb3e041a9c0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
