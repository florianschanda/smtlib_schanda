(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6743531428529567772756081467377953231334686279296875p-941 {- 3037016562868699 -941 (-9.00785e-284)}
; Y = 1.3096857767183716081405009390437044203281402587890625p-452 {+ 1394700748630801 -452 (1.12618e-136)}
; -1.6743531428529567772756081467377953231334686279296875p-941 < 1.3096857767183716081405009390437044203281402587890625p-452 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010010 #b1010110010100010011010000101011010000010000111011011)))
(assert (= y (fp #b0 #b01000111011 #b0100111101000111100100010010101100001010101100010001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
