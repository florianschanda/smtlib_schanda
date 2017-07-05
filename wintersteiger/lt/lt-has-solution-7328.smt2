(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.44905355813415326338144950568675994873046875p534 {- 2022357437082368 534 (-8.14896e+160)}
; Y = -1.6100947943154995112280403191107325255870819091796875p-637 {- 2747622688339963 -637 (-2.82322e-192)}
; -1.44905355813415326338144950568675994873046875p534 < -1.6100947943154995112280403191107325255870819091796875p-637 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010101 #b0111001011110101001011001000101001010110101100000000)))
(assert (= y (fp #b1 #b00110000010 #b1001110000101111001011000010010100001011011111111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
