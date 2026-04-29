(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8489520202291043204922971199266612529754638671875p684 {- 3823340001959224 684 (-1.48403e+206)}
; Y = -1.0582259482866687161362051483592949807643890380859375p428 {- 262226359007135 428 (-7.33528e+128)}
; -1.8489520202291043204922971199266612529754638671875p684 = -1.0582259482866687161362051483592949807643890380859375p428 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101011 #b1101100101010100111010110110101011000001110100111000)))
(assert (= y (fp #b1 #b10110101011 #b0000111011100111111001010100111110101011011110011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
