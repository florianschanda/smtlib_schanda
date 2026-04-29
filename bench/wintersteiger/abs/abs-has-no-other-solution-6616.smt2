(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.537057942184551162512207156396470963954925537109375p278 {- 2418693948298710 278 (-7.46499e+083)}
; -1.537057942184551162512207156396470963954925537109375p278 | == 1.537057942184551162512207156396470963954925537109375p278
; [HW: 1.537057942184551162512207156396470963954925537109375p278] 

; mpf : + 2418693948298710 278
; mpfd: + 2418693948298710 278 (7.46499e+083) class: Pos. norm. non-zero
; hwf : + 2418693948298710 278 (7.46499e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010101 #b1000100101111100101000010001100110111101010111010110)))
(assert (= r (fp #b0 #b10100010101 #b1000100101111100101000010001100110111101010111010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
