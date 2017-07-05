(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.450759572891680448947226977907121181488037109375p169 {- 2030040644508656 169 (-1.08559e+051)}
; Y = 1.9596613406464007400842319839284755289554595947265625p973 {+ 4321930456137001 973 (1.56447e+293)}
; -1.450759572891680448947226977907121181488037109375p169 + 1.9596613406464007400842319839284755289554595947265625p973 == 1.9596613406464005180396270588971674442291259765625p973
; [HW: 1.9596613406464005180396270588971674442291259765625p973] 

; mpf : + 4321930456137000 973
; mpfd: + 4321930456137000 973 (1.56447e+293) class: Pos. norm. non-zero
; hwf : + 4321930456137000 973 (1.56447e+293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101000 #b0111001101100100111110101011011111101101101111110000)))
(assert (= y (fp #b0 #b11111001100 #b1111010110101100010111011001100101001111110100101001)))
(assert (= r (fp #b0 #b11111001100 #b1111010110101100010111011001100101001111110100101000)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
