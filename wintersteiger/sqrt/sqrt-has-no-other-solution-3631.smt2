(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.33263885845717933165133217698894441127777099609375p-982 {+ 1498072238996700 -982 (3.26029e-296)}
; 1.33263885845717933165133217698894441127777099609375p-982 S == 1.1543997827690279933676720247603952884674072265625p-491
; [HW: 1.1543997827690279933676720247603952884674072265625p-491] 

; mpf : + 695354804144680 -491
; mpfd: + 695354804144680 -491 (1.80563e-148) class: Pos. norm. non-zero
; hwf : + 695354804144680 -491 (1.80563e-148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101001 #b0101010100100111110100011111101001110011110011011100)))
(assert (= r (fp #b0 #b01000010100 #b0010011110000110101111101000000110000000101000101000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
