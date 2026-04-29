(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1363348766993974781058795997523702681064605712890625p-862 {+ 613997699901009 -862 (3.6953e-260)}
; Y = 1.02142430624325708521382694016210734844207763671875p-842 {+ 96486497613804 -842 (3.48297e-254)}
; 1.1363348766993974781058795997523702681064605712890625p-862 * 1.02142430624325708521382694016210734844207763671875p-842 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100001 #b0010001011100110110101111010110010111010011001010001)))
(assert (= y (fp #b0 #b00010110101 #b0000010101111100000100000011011010100111011111101100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
