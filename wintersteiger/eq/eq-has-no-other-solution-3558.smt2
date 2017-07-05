(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3059364838151459320414460307802073657512664794921875p-200 {+ 1377815434508931 -200 (8.12686e-061)}
; Y = 1.057222937548583541200741819920949637889862060546875p470 {+ 257709200220846 470 (3.22303e+141)}
; 1.3059364838151459320414460307802073657512664794921875p-200 = 1.057222937548583541200741819920949637889862060546875p470 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110111 #b0100111001010001110110100111100010100011101010000011)))
(assert (= y (fp #b0 #b10111010101 #b0000111010100110001010011001010101011010001010101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
