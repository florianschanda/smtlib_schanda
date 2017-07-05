(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5166861811620149236290444605401717126369476318359375p-867 {+ 2326947692948735 -867 (1.54131e-261)}
; Y = 1.248705956643593850685647339560091495513916015625p853 {+ 1120072053664912 853 (7.49974e+256)}
; 1.5166861811620149236290444605401717126369476318359375p-867 / 1.248705956643593850685647339560091495513916015625p853 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011100 #b1000010001000101100010111010101001100010110011111111)))
(assert (= y (fp #b0 #b11101010100 #b0011111110101011001100011000111000011010110010010000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
