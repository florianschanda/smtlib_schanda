(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4557736246421051351518372030113823711872100830078125p417 {- 2052621926103485 417 (-4.92722e+125)}
; Y = 1.158141711630967574109263296122662723064422607421875p-343 {+ 712206953572958 -343 (6.46358e-104)}
; -1.4557736246421051351518372030113823711872100830078125p417 < 1.158141711630967574109263296122662723064422607421875p-343 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100000 #b0111010010101101100101001000110000110111100110111101)))
(assert (= y (fp #b0 #b01010101000 #b0010100001111011111110011010011110010110101001011110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
