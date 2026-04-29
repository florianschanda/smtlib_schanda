(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.190509775664293723451692130765877664089202880859375p-108 {- 857979754692150 -108 (-3.66854e-033)}
; Y = 1.0425554651502040304222873601247556507587432861328125p4 {+ 191652776993037 4 (16.6809)}
; -1.190509775664293723451692130765877664089202880859375p-108 = 1.0425554651502040304222873601247556507587432861328125p4 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010011 #b0011000011000101001111111010100000001011111000110110)))
(assert (= y (fp #b0 #b10000000011 #b0000101011100100111010100011101100010110000100001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
