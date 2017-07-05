(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9099620680861428834163007195456884801387786865234375p266 {+ 4098104830754039 266 (2.26466e+080)}
; Y = 1.6045014347232815499211255882983095943927764892578125p1023 {+ 2722432436164701 1023 (1.4422e+308)}
; 1.9099620680861428834163007195456884801387786865234375p266 = 1.6045014347232815499211255882983095943927764892578125p1023 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001001 #b1110100011110011010001100010101100000111110011110111)))
(assert (= y (fp #b0 #b11111111110 #b1001101011000000100110110010010010000101100001011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
