(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5565302795912721034454762047971598803997039794921875p-325 {- 2506389559787651 -325 (-2.27724e-098)}
; Y = 1.17786261362197475222046705312095582485198974609375p344 {+ 801022000431068 344 (4.22098e+103)}
; -1.5565302795912721034454762047971598803997039794921875p-325 > 1.17786261362197475222046705312095582485198974609375p344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010111010 #b1000111001111000110001001011011000010100000010000011)))
(assert (= y (fp #b0 #b10101010111 #b0010110110001000011001110111110010101111111111011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
