(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5382015596107578847551167200435884296894073486328125p-280 {+ 2423844343313229 -280 (7.91798e-085)}
; 1.5382015596107578847551167200435884296894073486328125p-280 S == 1.24024254063903072164976038038730621337890625p-140
; [HW: 1.24024254063903072164976038038730621337890625p-140] 

; mpf : + 1081956216500480 -140
; mpfd: + 1081956216500480 -140 (8.8983e-043) class: Pos. norm. non-zero
; hwf : + 1081956216500480 -140 (8.8983e-043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100111 #b1000100111000111100100111101000100101111001101001101)))
(assert (= r (fp #b0 #b01101110011 #b0011110110000000100010001111111100100111000100000000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
