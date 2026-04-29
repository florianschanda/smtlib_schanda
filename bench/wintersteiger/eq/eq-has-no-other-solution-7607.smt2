(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5846036464074970684379195517976768314838409423828125p-638 {- 2632820764120237 -638 (-1.38926e-192)}
; Y = -1.9138497591431324895694388033007271587848663330078125p687 {- 4115613434749629 687 (-1.2289e+207)}
; -1.5846036464074970684379195517976768314838409423828125p-638 = -1.9138497591431324895694388033007271587848663330078125p687 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000001 #b1001010110101000100101011010011001110001010010101101)))
(assert (= y (fp #b1 #b11010101110 #b1110100111110010000011101100110011111010001010111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
