(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5623701098687898802808149412157945334911346435546875p8 {+ 2532689817249387 8 (399.967)}
; Y = 1.86826391796920088239630786119960248470306396484375p107 {+ 3910313057425340 107 (3.03143e+032)}
; 1.5623701098687898802808149412157945334911346435546875p8 > 1.86826391796920088239630786119960248470306396484375p107 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000111 #b1000111111110111011111001100111000100010011001101011)))
(assert (= y (fp #b0 #b10001101010 #b1101111001000110100010110100101111111001011110111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
