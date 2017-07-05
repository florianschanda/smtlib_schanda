(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7147116081399056408685055430396459996700286865234375p-429 {+ 3218774932096247 -429 (1.23687e-129)}
; Y = -1.3314451632112074275227087127859704196453094482421875p-1003 {- 1492696313531747 -1003 (-1.55324e-302)}
; 1.7147116081399056408685055430396459996700286865234375p-429 < -1.3314451632112074275227087127859704196453094482421875p-1003 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010010 #b1011011011110111010101110000011100001000010011110111)))
(assert (= y (fp #b1 #b00000010100 #b0101010011011001100101110001100001101000110101100011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
