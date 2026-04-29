(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.776546787985654685115832762676291167736053466796875p381 {- 3497255825007950 381 (-8.74994e+114)}
; Y = 0.4294970787788094934711580208386294543743133544921875p-1022 {+ 1934282883944963 -1023 (9.55663e-309)}
; -1.776546787985654685115832762676291167736053466796875p381 = 0.4294970787788094934711580208386294543743133544921875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111100 #b1100011011001011110001010011001000110110010101001110)))
(assert (= y (fp #b0 #b00000000000 #b0110110111110011100001010100001100010101001000000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
