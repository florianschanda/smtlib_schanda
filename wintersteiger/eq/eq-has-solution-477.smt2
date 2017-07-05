(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.179009054250653054651820639264769852161407470703125p-851 {- 806185110019186 -851 (-7.85219e-257)}
; Y = -1.1759311590313286099984679822227917611598968505859375p-755 {- 792323502256351 -755 (-6.20491e-228)}
; -1.179009054250653054651820639264769852161407470703125p-851 = -1.1759311590313286099984679822227917611598968505859375p-755 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101100 #b0010110111010011100010011001000110110001110001110010)))
(assert (= y (fp #b1 #b00100001100 #b0010110100001001110100110000111001100011000011011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
