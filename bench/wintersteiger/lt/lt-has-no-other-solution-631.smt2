(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.940238933047025771116977921337820589542388916015625p-244 {+ 4234459708509818 -244 (6.86335e-074)}
; Y = -1.8845889663753343512553328764624893665313720703125p382 {- 3983834539344008 382 (-1.85641e+115)}
; 1.940238933047025771116977921337820589542388916015625p-244 < -1.8845889663753343512553328764624893665313720703125p382 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001011 #b1111000010110011011111111010101111011100111001111010)))
(assert (= y (fp #b1 #b10101111101 #b1110001001110100011011000010100011111100000010001000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
