(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.05014536956077630946992940152995288372039794921875p-547 {+ 225834667668268 -547 (2.27951e-165)}
; 1.05014536956077630946992940152995288372039794921875p-547 S == 1.449237985674386219869802516768686473369598388671875p-274
; [HW: 1.449237985674386219869802516768686473369598388671875p-274] 

; mpf : + 2023188024883838 -274
; mpfd: + 2023188024883838 -274 (4.77442e-083) class: Pos. norm. non-zero
; hwf : + 2023188024883838 -274 (4.77442e-083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011100 #b0000110011010110010100111011001001001111001100101100)))
(assert (= r (fp #b0 #b01011101101 #b0111001100000001010000101011100010010111101001111110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
