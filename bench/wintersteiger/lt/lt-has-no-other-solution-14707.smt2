(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.13831825801413710763654307811520993709564208984375p15 {+ 622930055251004 15 (37300.4)}
; Y = 1.0428102719589815716716429960797540843486785888671875p-729 {+ 192800324842099 -729 (3.69265e-220)}
; 1.13831825801413710763654307811520993709564208984375p15 < 1.0428102719589815716716429960797540843486785888671875p-729 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001110 #b0010001101101000110100110100101010011100010000111100)))
(assert (= y (fp #b0 #b00100100110 #b0000101011110101100111010010110111111111001001110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
