(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.507772966000224368343651804025284945964813232421875p-944 {+ 2286806140467422 -944 (1.01396e-284)}
; 1.507772966000224368343651804025284945964813232421875p-944 S == 1.227914071097902404261503761517815291881561279296875p-472
; [HW: 1.227914071097902404261503761517815291881561279296875p-472] 

; mpf : + 1026433725669006 -472
; mpfd: + 1026433725669006 -472 (1.00695e-142) class: Pos. norm. non-zero
; hwf : + 1026433725669006 -472 (1.00695e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001111 #b1000000111111101011010001011101011000011100011011110)))
(assert (= r (fp #b0 #b01000100111 #b0011101001011000100100111001100110101001111010001110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
