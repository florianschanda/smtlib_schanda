(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5955572390812111649438520544208586215972900390625p666 {- 2682151360003944 666 (-4.88528e+200)}
; -1.5955572390812111649438520544208586215972900390625p666 | == 1.5955572390812111649438520544208586215972900390625p666
; [HW: 1.5955572390812111649438520544208586215972900390625p666] 

; mpf : + 2682151360003944 666
; mpfd: + 2682151360003944 666 (4.88528e+200) class: Pos. norm. non-zero
; hwf : + 2682151360003944 666 (4.88528e+200) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011001 #b1001100001110110011100000111000010111111111101101000)))
(assert (= r (fp #b0 #b11010011001 #b1001100001110110011100000111000010111111111101101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
