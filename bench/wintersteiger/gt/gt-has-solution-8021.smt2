(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0584297156546387252973318027216009795665740966796875p-770 {- 263144045649595 -770 (-1.70438e-232)}
; Y = 1.76222802837706193912481467123143374919891357421875p345 {+ 3432769864570284 345 (1.26302e+104)}
; -1.0584297156546387252973318027216009795665740966796875p-770 > 1.76222802837706193912481467123143374919891357421875p345 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111101 #b0000111011110101001111111111010111011001111010111011)))
(assert (= y (fp #b0 #b10101011000 #b1100001100100001011000000100010111111001010110101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
