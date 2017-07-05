(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.334293147440932525427115251659415662288665771484375p-248 {- 1505522494247494 -248 (-2.94993e-075)}
; Y = 1.555224403083979467510289396159350872039794921875p975 {+ 2500508414836016 975 (4.96637e+293)}
; -1.334293147440932525427115251659415662288665771484375p-248 > 1.555224403083979467510289396159350872039794921875p975 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000111 #b0101010110010100001111000101011110001001001001000110)))
(assert (= y (fp #b0 #b11111001110 #b1000111000100011001011111011110100101111110100110000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
