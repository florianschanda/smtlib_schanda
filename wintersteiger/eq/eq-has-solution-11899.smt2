(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1533465489737142473103403972345404326915740966796875p994 {- 690611460816571 994 (-1.93097e+299)}
; Y = 1.673084998171488368967629867256619036197662353515625p-883 {+ 3031305346953786 -883 (2.59437e-266)}
; -1.1533465489737142473103403972345404326915740966796875p994 = 1.673084998171488368967629867256619036197662353515625p-883 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100001 #b0010011101000001101110000010110011001011111010111011)))
(assert (= y (fp #b0 #b00010001100 #b1010110001001111010011000110011010010011001000111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
