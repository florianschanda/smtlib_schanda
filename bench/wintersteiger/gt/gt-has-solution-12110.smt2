(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.51697820424230034319634796702302992343902587890625p730 {- 2328262847984292 730 (-8.56794e+219)}
; Y = 1.611987578437742651971120722009800374507904052734375p-285 {+ 2756147030207590 -285 (2.59306e-086)}
; -1.51697820424230034319634796702302992343902587890625p730 > 1.611987578437742651971120722009800374507904052734375p-285 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011001 #b1000010001011000101011101111111111110111001010100100)))
(assert (= y (fp #b0 #b01011100010 #b1001110010101011001101111100101011110010110001100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
