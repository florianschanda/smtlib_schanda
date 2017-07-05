(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1729855366105337299842403808725066483020782470703125p987 {+ 779057598219685 987 (1.53426e+297)}
; Y = -1.8892918902817068538269040800514630973339080810546875p272 {- 4005014625696299 272 (-1.4337e+082)}
; 1.1729855366105337299842403808725066483020782470703125p987 % -1.8892918902817068538269040800514630973339080810546875p272 == 1.8829323050622999158321135837468318641185760498046875p272
; [HW: 1.8829323050622999158321135837468318641185760498046875p272] 

; mpf : + 3976373600071947 272
; mpfd: + 3976373600071947 272 (1.42887e+082) class: Pos. norm. non-zero
; hwf : + 3976373600071947 272 (1.42887e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011010 #b0010110001001000110001111011011001101100010110100101)))
(assert (= y (fp #b1 #b10100001111 #b1110001110101000101000100010000101011011101000101011)))
(assert (= r (fp #b1 #b10100000111 #xa0c8228892000)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
