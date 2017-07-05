(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0506486177957174987795951892621815204620361328125p-398 {- 228101096231624 -398 (-1.62749e-120)}
; Y = 1.1805957625140413025377483791089616715908050537109375p-744 {+ 813331008762927 -744 (1.27581e-224)}
; -1.0506486177957174987795951892621815204620361328125p-398 = 1.1805957625140413025377483791089616715908050537109375p-744 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110001 #b0000110011110111010011101100110100000101001011001000)))
(assert (= y (fp #b0 #b00100010111 #b0010111000111011100001100001110111001011010000101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
