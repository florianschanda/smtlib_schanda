(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.521155848171634517029815469868481159210205078125p1013 {- 2347077283627728 1013 (-1.33524e+305)}
; Y = -1.279640942373931888909055487602017819881439208984375p547 {- 1259390843872774 547 (-5.89516e+164)}
; -1.521155848171634517029815469868481159210205078125p1013 % -1.279640942373931888909055487602017819881439208984375p547 == -1.026432937186189775502498378045856952667236328125p544
; [HW: -1.026432937186189775502498378045856952667236328125p544] 

; mpf : - 119043366062032 544
; mpfd: - 119043366062032 544 (-5.91083e+163) class: Neg. norm. non-zero
; hwf : - 119043366062032 544 (-5.91083e+163) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110100 #b1000010101101010011110000011110000000100001011010000)))
(assert (= y (fp #b1 #b11000100010 #b0100011110010110100011000111111000011110011000000110)))
(assert (= r (fp #b1 #b11000011111 #x06c44f18c07d0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
