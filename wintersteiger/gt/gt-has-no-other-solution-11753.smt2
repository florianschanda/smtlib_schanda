(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.378295405009141827434859806089662015438079833984375p-917 {- 1703691045035142 -917 (-1.24405e-276)}
; Y = -1.49462099239826784469187259674072265625p735 {- 2227574917054464 735 (-2.70133e+221)}
; -1.378295405009141827434859806089662015438079833984375p-917 > -1.49462099239826784469187259674072265625p735 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101010 #b0110000011010111111101111011100010111101110010000110)))
(assert (= y (fp #b1 #b11011011110 #b0111111010011111011110110011101001000100000000000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
