(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5555661948924635051838549770764075219631195068359375p-29 {+ 2502047708297343 -29 (2.89747e-009)}
; Y = 1.402402196257016786518079243251122534275054931640625p889 {+ 1812258381116170 889 (5.78814e+267)}
; 1.5555661948924635051838549770764075219631195068359375p-29 = 1.402402196257016786518079243251122534275054931640625p889 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100010 #b1000111000111001100101100000110111010011100001111111)))
(assert (= y (fp #b0 #b11101111000 #b0110011100000011110101001001000011000011001100001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
