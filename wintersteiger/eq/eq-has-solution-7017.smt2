(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.314331633542630495270486790104769170284271240234375p-691 {- 1415623827693350 -691 (-1.27932e-208)}
; Y = -1.1381364044005588542773921290063299238681793212890625p622 {- 622111059384657 622 (-1.98085e+187)}
; -1.314331633542630495270486790104769170284271240234375p-691 = -1.1381364044005588542773921290063299238681793212890625p622 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001100 #b0101000001111000000010011011011000101001111100100110)))
(assert (= y (fp #b1 #b11001101101 #b0010001101011100111010000100101101001001100101010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
