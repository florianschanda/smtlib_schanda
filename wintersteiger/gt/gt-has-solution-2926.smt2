(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.80154511408023498830743847065605223178863525390625p-683 {- 3609838277092388 -683 (-4.48909e-206)}
; Y = 1.3703715945609931115001245416351594030857086181640625p-653 {+ 1668005375253505 -653 (3.6665e-197)}
; -1.80154511408023498830743847065605223178863525390625p-683 > 1.3703715945609931115001245416351594030857086181640625p-653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010100 #b1100110100110010000011111000001100111110010000100100)))
(assert (= y (fp #b0 #b00101110010 #b0101111011010000101011000011111000000001110000000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
