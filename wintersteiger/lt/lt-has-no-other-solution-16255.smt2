(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.288801140281207846527422589133493602275848388671875p886 {- 1300644707754622 886 (-6.64909e+266)}
; Y = 1.788916475341479905836195030133239924907684326171875p479 {+ 3552963944374334 479 (2.79227e+144)}
; -1.288801140281207846527422589133493602275848388671875p886 < 1.788916475341479905836195030133239924907684326171875p479 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110101 #b0100100111101110110111110001110010001110001001111110)))
(assert (= y (fp #b0 #b10111011110 #b1100100111110110011011100001110011011110000000111110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
