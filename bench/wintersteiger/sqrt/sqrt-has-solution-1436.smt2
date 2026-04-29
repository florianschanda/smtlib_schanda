(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.436596725353867842756017125793732702732086181640625p-356 {+ 1966256849614858 -356 (9.78715e-108)}
; 1.436596725353867842756017125793732702732086181640625p-356 S == 1.19858113006749267270834025111980736255645751953125p-178
; [HW: 1.19858113006749267270834025111980736255645751953125p-178] 

; mpf : + 894329903374772 -178
; mpfd: + 894329903374772 -178 (3.12844e-054) class: Pos. norm. non-zero
; hwf : + 894329903374772 -178 (3.12844e-054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011011 #b0110111111000100110011011001000011101111100000001010)))
(assert (= r (fp #b0 #b01101001101 #b0011001011010110001101101000001100111110000110110100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
