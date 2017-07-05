(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.52844617481576960926759056746959686279296875p569 {+ 2379909995985664 569 (2.95337e+171)}
; Y = -1.263529924377953417291564619517885148525238037109375p981 {- 1186833269229526 981 (-2.58233e+295)}
; 1.52844617481576960926759056746959686279296875p569 M -1.263529924377953417291564619517885148525238037109375p981 == 1.52844617481576960926759056746959686279296875p569
; [HW: 1.52844617481576960926759056746959686279296875p569] 

; mpf : + 2379909995985664 569
; mpfd: + 2379909995985664 569 (2.95337e+171) class: Pos. norm. non-zero
; hwf : + 2379909995985664 569 (2.95337e+171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111000 #b1000011101001000001111111001111010000111101100000000)))
(assert (= y (fp #b1 #b11111010100 #b0100001101110110101100100111011010111000011111010110)))
(assert (= r (fp #b0 #b11000111000 #b1000011101001000001111111001111010000111101100000000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
