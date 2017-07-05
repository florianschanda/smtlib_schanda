(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2650374432485078646237752764136530458927154541015625p-221 {- 1193622530653209 -221 (-3.75383e-067)}
; Y = 1.673115772265339362689928748295642435550689697265625p-838 {+ 3031443941151386 -838 (9.12829e-253)}
; -1.2650374432485078646237752764136530458927154541015625p-221 = 1.673115772265339362689928748295642435550689697265625p-838 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100010 #b0100001111011001011111100110111011110111110000011001)))
(assert (= y (fp #b0 #b00010111001 #b1010110001010001010100001011010001001101001010011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
