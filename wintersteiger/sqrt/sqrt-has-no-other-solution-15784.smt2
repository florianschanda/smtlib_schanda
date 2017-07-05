(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.129152404212089511048588974517770111560821533203125p55 {+ 581650719483570 55 (4.0682e+016)}
; 1.129152404212089511048588974517770111560821533203125p55 S == 1.5027657197395003496609433568664826452732086181640625p27
; [HW: 1.5027657197395003496609433568664826452732086181640625p27] 

; mpf : + 2264255508073473 27
; mpfd: + 2264255508073473 27 (2.01698e+008) class: Pos. norm. non-zero
; hwf : + 2264255508073473 27 (2.01698e+008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110110 #b0010000100010000001000011100100001001010011010110010)))
(assert (= r (fp #b0 #b10000011010 #b1000000010110101010000010001001111010100110000000001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
