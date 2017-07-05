(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.806030922058493359827480162493884563446044921875p-500 {+ 3630040560231728 -500 (5.51731e-151)}
; Y = -1.782164389937759718662846353254280984401702880859375p625 {- 3522555255066166 625 (-2.48139e+188)}
; 1.806030922058493359827480162493884563446044921875p-500 = -1.782164389937759718662846353254280984401702880859375p625 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001011 #b1100111001011000000010101110000111001110010100110000)))
(assert (= y (fp #b1 #b11001110000 #b1100100000111011111011001110101011100000111000110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
