(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5141066075870004414838376760599203407764434814453125p-892 {- 2315330326357525 -892 (-4.58564e-269)}
; Y = 1.019029154429380579216513069695793092250823974609375p-287 {+ 85699692797334 -287 (4.09806e-087)}
; -1.5141066075870004414838376760599203407764434814453125p-892 > 1.019029154429380579216513069695793092250823974609375p-287 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000011 #b1000001110011100011111011001101000111110011000010101)))
(assert (= y (fp #b0 #b01011100000 #b0000010011011111000110000011101111110001110110010110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
