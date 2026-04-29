(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4995807942497825226979557555750943720340728759765625p-421 {+ 2249911878824777 -421 (2.76912e-127)}
; 1.4995807942497825226979557555750943720340728759765625p-421 S == 1.7318087621038198431477894700947217643260955810546875p-211
; [HW: 1.7318087621038198431477894700947217643260955810546875p-211] 

; mpf : + 3295773668317227 -211
; mpfd: + 3295773668317227 -211 (5.26224e-064) class: Pos. norm. non-zero
; hwf : + 3295773668317227 -211 (5.26224e-064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011010 #b0111111111100100100001101110010100000011001101001001)))
(assert (= r (fp #b0 #b01100101100 #b1011101101010111110100011010110000101001100000101011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
