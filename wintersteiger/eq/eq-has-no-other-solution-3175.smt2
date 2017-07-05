(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.981698075745952802861893360386602580547332763671875p362 {+ 4421175088119806 362 (1.86164e+109)}
; Y = -1.126369428226368096801479623536579310894012451171875p479 {- 569117309871294 479 (-1.75812e+144)}
; 1.981698075745952802861893360386602580547332763671875p362 = -1.126369428226368096801479623536579310894012451171875p479 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101001 #b1111101101010000100100001010100111011111111111111110)))
(assert (= y (fp #b1 #b10111011110 #b0010000001011001101111110011000101110010010010111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
