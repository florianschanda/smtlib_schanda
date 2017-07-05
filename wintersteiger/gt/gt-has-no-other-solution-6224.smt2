(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.139870234944995619486007853993214666843414306640625p-848 {- 629919537978506 -848 (-6.07322e-256)}
; Y = -1.2569831293750812761800261796452105045318603515625p-927 {- 1157349125694120 -927 (-1.10796e-279)}
; -1.139870234944995619486007853993214666843414306640625p-848 > -1.2569831293750812761800261796452105045318603515625p-927 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101111 #b0010001111001110100010010010010011000101110010001010)))
(assert (= y (fp #b1 #b00001100000 #b0100000111001001101001010111100001001010001010101000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
