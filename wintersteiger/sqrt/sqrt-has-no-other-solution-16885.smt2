(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.182824647229805403725322321406565606594085693359375p-1010 {+ 823369013138294 -1010 (1.07801e-304)}
; 1.182824647229805403725322321406565606594085693359375p-1010 S == 1.087577421257817977817694554687477648258209228515625p-505
; [HW: 1.087577421257817977817694554687477648258209228515625p-505] 

; mpf : + 394413641742778 -505
; mpfd: + 394413641742778 -505 (1.03827e-152) class: Pos. norm. non-zero
; hwf : + 394413641742778 -505 (1.03827e-152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001101 #b0010111011001101100110001001100011000001001101110110)))
(assert (= r (fp #b0 #b01000000110 #b0001011001101011011110010101000000101011100110111010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
