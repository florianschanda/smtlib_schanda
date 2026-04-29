(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.154589526976764091159566305577754974365234375p-426 {- 696209336087936 -426 (-6.66269e-129)}
; Y = -1.8589279352772563047579978956491686403751373291015625p283 {- 3868267529252761 283 (-2.88903e+085)}
; -1.154589526976764091159566305577754974365234375p-426 > -1.8589279352772563047579978956491686403751373291015625p283 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010101 #b0010011110010011001011011110001010101011010110000000)))
(assert (= y (fp #b1 #b10100011010 #b1101101111100010101100110111111110100010111110011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
