(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.3380485794055665405011268376256339251995086669921875p7 {+ 1522435456244035 7 (171.27)}
; -zero M 1.3380485794055665405011268376256339251995086669921875p7 == 1.3380485794055665405011268376256339251995086669921875p7
; [HW: 1.3380485794055665405011268376256339251995086669921875p7] 

; mpf : + 1522435456244035 7
; mpfd: + 1522435456244035 7 (171.27) class: Pos. norm. non-zero
; hwf : + 1522435456244035 7 (171.27) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10000000110 #b0101011010001010010110100000100100000001100101000011)))
(assert (= r (fp #b0 #b10000000110 #b0101011010001010010110100000100100000001100101000011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
