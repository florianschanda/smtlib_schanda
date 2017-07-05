(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4916495229322268567528908533859066665172576904296875p-727 {+ 2214192608274459 -727 (2.11281e-219)}
; Y = -1.988731230535070171328015931067056953907012939453125p-173 {- 4452849601407314 -173 (-1.66107e-052)}
; 1.4916495229322268567528908533859066665172576904296875p-727 < -1.988731230535070171328015931067056953907012939453125p-173 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101000 #b0111110111011100101111100011111000010110100000011011)))
(assert (= y (fp #b1 #b01101010010 #b1111110100011101011111010110101110101110100101010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
