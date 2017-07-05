(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1610984317965915568748869191040284931659698486328125p-621 {- 725522837409101 -621 (-1.33426e-187)}
; Y = 1.424468736912163802088571173953823745250701904296875p-967 {+ 1911637245388046 -967 (1.14195e-291)}
; -1.1610984317965915568748869191040284931659698486328125p-621 = 1.424468736912163802088571173953823745250701904296875p-967 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010010 #b0010100100111101101111110011000000000000110101001101)))
(assert (= y (fp #b0 #b00000111000 #b0110110010101001111110111010111100110110010100001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
