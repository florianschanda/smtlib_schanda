(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.754080451728482703543932075263001024723052978515625p-439 {- 3396076441411770 -439 (-1.23561e-132)}
; Y = 1.88518429679810584076449231361038982868194580078125p-608 {+ 3986515669214164 -608 (1.77467e-183)}
; -1.754080451728482703543932075263001024723052978515625p-439 > 1.88518429679810584076449231361038982868194580078125p-608 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001000 #b1100000100001011011010101001111010111010000010111010)))
(assert (= y (fp #b0 #b00110011111 #b1110001010011011011100000010010110101110001111010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
