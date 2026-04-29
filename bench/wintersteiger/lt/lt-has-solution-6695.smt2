(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.880273954217155374379899512859992682933807373046875p-576 {- 3964401452196334 -576 (-7.60228e-174)}
; Y = -1.9374704669571334303412868393934331834316253662109375p852 {- 4221991645658991 852 (-5.81824e+256)}
; -1.880273954217155374379899512859992682933807373046875p-576 < -1.9374704669571334303412868393934331834316253662109375p852 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111111 #b1110000101011001101000100100010011100010000111101110)))
(assert (= y (fp #b1 #b11101010011 #b1110111111111110000100001000010010001011111101101111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
