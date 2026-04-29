(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7984510371489310642800774076022207736968994140625p965 {+ 3595903793377512 965 (5.60847e+290)}
; 1.7984510371489310642800774076022207736968994140625p965 S == 1.89655004529220416742418819922022521495819091796875p482
; [HW: 1.89655004529220416742418819922022521495819091796875p482] 

; mpf : + 4037702449896972 482
; mpfd: + 4037702449896972 482 (2.36822e+145) class: Pos. norm. non-zero
; hwf : + 4037702449896972 482 (2.36822e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000100 #b1100110001100111010010011000010000000011000011101000)))
(assert (= r (fp #b0 #b10111100001 #b1110010110000100010011011100001111000001111000001100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
