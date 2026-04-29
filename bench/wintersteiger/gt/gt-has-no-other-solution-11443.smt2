(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.63685166804843351684439767268486320972442626953125p-44 {+ 2868124934913204 -44 (9.30442e-014)}
; Y = 1.182455803177240749590737323160283267498016357421875p773 {+ 821707887200606 773 (5.87451e+232)}
; 1.63685166804843351684439767268486320972442626953125p-44 > 1.182455803177240749590737323160283267498016357421875p773 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010011 #b1010001100001000101101011111111010101011110010110100)))
(assert (= y (fp #b0 #b11100000100 #b0010111010110101011011000110101110011100100101011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
