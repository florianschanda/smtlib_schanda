(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.457609663538818711714384335209615528583526611328125p-842 {- 2060890710194562 -842 (-4.97033e-254)}
; Y = -1.47124461628539382473945806850679218769073486328125p50 {- 2122297078303252 50 (-1.65647e+015)}
; -1.457609663538818711714384335209615528583526611328125p-842 > -1.47124461628539382473945806850679218769073486328125p50 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110101 #b0111010100100101111010000010101100111011100110000010)))
(assert (= y (fp #b1 #b10000110001 #b0111100010100011011111001011011101011100101000010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
