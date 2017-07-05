(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4234573106378025642015927587635815143585205078125p-205 {- 1907082186395720 -205 (-2.76819e-062)}
; Y = -1.3639751553140013751175274592242203652858734130859375p74 {- 1639198373844255 74 (-2.57648e+022)}
; -1.4234573106378025642015927587635815143585205078125p-205 > -1.3639751553140013751175274592242203652858734130859375p74 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110010 #b0110110001100111101100101100010001110001000001001000)))
(assert (= y (fp #b1 #b10001001001 #b0101110100101101011110011100110010100001010100011111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
