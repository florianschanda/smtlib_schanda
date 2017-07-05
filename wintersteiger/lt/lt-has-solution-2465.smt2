(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3936088507461910079854305877233855426311492919921875p-299 {+ 1772656673550275 -299 (1.36827e-090)}
; Y = -1.69540885572022492766564027988351881504058837890625p-634 {- 3131843063491748 -634 (-2.37825e-191)}
; 1.3936088507461910079854305877233855426311492919921875p-299 < -1.69540885572022492766564027988351881504058837890625p-634 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011010100 #b0110010011000011100011001011010101011110111111000011)))
(assert (= y (fp #b1 #b00110000101 #b1011001000000110010100001001010010101010110010100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
