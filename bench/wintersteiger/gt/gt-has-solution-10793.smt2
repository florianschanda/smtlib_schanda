(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.873211555724263011057928451918996870517730712890625p414 {+ 3932595236975402 414 (7.92511e+124)}
; Y = -1.329261711871537077200855492264963686466217041015625p430 {- 1482862922892026 430 (-3.6856e+129)}
; 1.873211555724263011057928451918996870517730712890625p414 > -1.329261711871537077200855492264963686466217041015625p430 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011101 #b1101111110001010110010101110001001010011001100101010)))
(assert (= y (fp #b1 #b10110101101 #b0101010001001010011111101101110001010000001011111010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
