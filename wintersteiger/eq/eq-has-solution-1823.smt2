(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0067704880492212016207531632971949875354766845703125p1013 {+ 30491567455589 1013 (8.83723e+304)}
; Y = 1.5881322353662634672133435742580331861972808837890625p-403 {+ 2648712116040081 -403 (7.68774e-122)}
; 1.0067704880492212016207531632971949875354766845703125p1013 = 1.5881322353662634672133435742580331861972808837890625p-403 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110100 #b0000000110111011101101011111000010111111110101100101)))
(assert (= y (fp #b0 #b01001101100 #b1001011010001111110101011000110010011111000110010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
