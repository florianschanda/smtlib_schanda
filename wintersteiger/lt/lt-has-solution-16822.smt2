(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.715457056284211745378343039192259311676025390625p244 {+ 3222132132081168 244 (4.84952e+073)}
; Y = -1.9106147344909241159172097468399442732334136962890625p-553 {- 4101044178931409 -553 (-6.48016e-167)}
; 1.715457056284211745378343039192259311676025390625p244 < -1.9106147344909241159172097468399442732334136962890625p-553 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110011 #b1011011100101000001100011001001001101110111000010000)))
(assert (= y (fp #b1 #b00111010110 #b1110100100011110000011000001011111100100111011010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
