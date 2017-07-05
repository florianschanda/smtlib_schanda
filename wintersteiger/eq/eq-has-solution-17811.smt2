(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.276761411930195766473161711473949253559112548828125p-54 {- 1246422591639362 -54 (-7.08745e-017)}
; Y = -1.8556363886868696422283164793043397367000579833984375p-927 {- 3853443721254823 -927 (-1.63564e-279)}
; -1.276761411930195766473161711473949253559112548828125p-54 = -1.8556363886868696422283164793043397367000579833984375p-927 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001001 #b0100011011011001110101011111110100001000111101000010)))
(assert (= y (fp #b1 #b00001100000 #b1101101100001010111111001000001010101101011110100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
