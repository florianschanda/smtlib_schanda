(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0478622636747212393260042517795227468013763427734375p662 {+ 215552472850583 662 (2.00522e+199)}
; Y = 1.8626072914379434575238292381982319056987762451171875p858 {+ 3884837876286995 858 (3.57979e+258)}
; 1.0478622636747212393260042517795227468013763427734375p662 > 1.8626072914379434575238292381982319056987762451171875p858 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010101 #b0000110001000000101100111000100100110010000010010111)))
(assert (= y (fp #b0 #b11101011001 #b1101110011010011110101001101101000000100011000010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
