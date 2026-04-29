(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4384329216975952903112556668929755687713623046875p397 {- 1974526342784248 397 (-4.64299e+119)}
; Y = -1.406425587012404943010324132046662271022796630859375p159 {- 1830378122222902 159 (-1.02775e+048)}
; -1.4384329216975952903112556668929755687713623046875p397 = -1.406425587012404943010324132046662271022796630859375p159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001100 #b0111000000111101001000111101010000101110010011111000)))
(assert (= y (fp #b1 #b10010011110 #b0110100000001011100000011101110001111001110100110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
