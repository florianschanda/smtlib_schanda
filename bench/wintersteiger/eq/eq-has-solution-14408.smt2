(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7449156969986561183105777672608382999897003173828125p607 {+ 3354802055425581 607 (9.26791e+182)}
; Y = 1.1541118886807775201219783411943353712558746337890625p-388 {+ 694058244436113 -388 (1.83067e-117)}
; 1.7449156969986561183105777672608382999897003173828125p607 = 1.1541118886807775201219783411943353712558746337890625p-388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011110 #b1011111010110010110010111000110011100010111000101101)))
(assert (= y (fp #b0 #b01001111011 #b0010011101110011111000000111000111001111000010010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
