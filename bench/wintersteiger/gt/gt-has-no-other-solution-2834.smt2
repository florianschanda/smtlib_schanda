(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.483215229374429622311026832903735339641571044921875p-774 {- 2176207926950430 -774 (-1.49275e-233)}
; Y = 1.864483079203083537578322648187167942523956298828125p-767 {+ 3893285673367106 -767 (2.40188e-231)}
; -1.483215229374429622311026832903735339641571044921875p-774 > 1.864483079203083537578322648187167942523956298828125p-767 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111001 #b0111101110110011111111100100011100010111101000011110)))
(assert (= y (fp #b0 #b00100000000 #b1101110101001110110000110101100100011111011001000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
