(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2514998276155859802116765422397293150424957275390625p427 {+ 1132654529933297 427 (4.33749e+128)}
; Y = -1.34709440850816708490356177208013832569122314453125p935 {- 1563174248819764 935 (-3.91241e+281)}
; 1.2514998276155859802116765422397293150424957275390625p427 = -1.34709440850816708490356177208013832569122314453125p935 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110101010 #b0100000001100010010010101110111010001110111111110001)))
(assert (= y (fp #b1 #b11110100110 #b0101100011011011001011011101110100101010110000110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
