(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.5610854702755914136247383794398047029972076416015625p-205 {+ 2526904314856153 -205 (3.03583e-062)}
; +zero < 1.5610854702755914136247383794398047029972076416015625p-205 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01100110010 #b1000111110100011010011000010000100011000001011011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
