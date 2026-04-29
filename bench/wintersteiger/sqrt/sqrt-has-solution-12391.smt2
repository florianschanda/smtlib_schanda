(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5079846249424146975570693030022084712982177734375p967 {+ 2287759367600600 967 (1.88106e+291)}
; 1.5079846249424146975570693030022084712982177734375p967 S == 1.73665461444837365689863872830756008625030517578125p483
; [HW: 1.73665461444837365689863872830756008625030517578125p483] 

; mpf : + 3317597447130452 483
; mpfd: + 3317597447130452 483 (4.33712e+145) class: Pos. norm. non-zero
; hwf : + 3317597447130452 483 (4.33712e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b1000001000001011010001111100011011111111100111011000)))
(assert (= r (fp #b0 #b10111100010 #b1011110010010101011001011001010110000000110101010100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
