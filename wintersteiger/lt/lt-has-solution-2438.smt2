(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.290669452660396121501662491937167942523956298828125p-844 {- 1309058838689346 -844 (-1.10027e-254)}
; Y = 1.8493897984866520811664258872042410075664520263671875p-293 {+ 3825311579956787 -293 (1.16209e-088)}
; -1.290669452660396121501662491937167942523956298828125p-844 < 1.8493897984866520811664258872042410075664520263671875p-293 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110011 #b0100101001101001010100000011000100011111011001000010)))
(assert (= y (fp #b0 #b01011011010 #b1101100101110001100111000001111000001110011000110011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
