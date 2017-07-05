(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.90809353234476031246913407812826335430145263671875p408 {+ 4089689693885420 408 (1.26136e+123)}
; Y = 1.4726033744718913798266157755278982222080230712890625p105 {+ 2128416381165649 105 (5.97359e+031)}
; 1.90809353234476031246913407812826335430145263671875p408 < 1.4726033744718913798266157755278982222080230712890625p105 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110010111 #b1110100001111000110100010101011100100001001111101100)))
(assert (= y (fp #b0 #b10001101000 #b0111100011111100100010001110010101010110000001010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
