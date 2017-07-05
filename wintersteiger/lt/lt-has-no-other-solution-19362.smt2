(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0658677310555602080199832926155067980289459228515625p486 {- 296641889037561 486 (-2.12952e+146)}
; Y = 1.32511271841700573048683509114198386669158935546875p647 {+ 1464177517516236 647 (7.73856e+194)}
; -1.0658677310555602080199832926155067980289459228515625p486 < 1.32511271841700573048683509114198386669158935546875p647 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111100101 #b0001000011011100101101010010011010111110110011111001)))
(assert (= y (fp #b0 #b11010000110 #b0101001100111010100101100100110100011101010111001100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
