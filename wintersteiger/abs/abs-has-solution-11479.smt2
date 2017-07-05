(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.963698447962258786247957687010057270526885986328125p-62 {- 4340111971140354 -62 (-4.25809e-019)}
; -1.963698447962258786247957687010057270526885986328125p-62 | == 1.963698447962258786247957687010057270526885986328125p-62
; [HW: 1.963698447962258786247957687010057270526885986328125p-62] 

; mpf : + 4340111971140354 -62
; mpfd: + 4340111971140354 -62 (4.25809e-019) class: Pos. norm. non-zero
; hwf : + 4340111971140354 -62 (4.25809e-019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111000001 #b1111011010110100111100010000010100110100001100000010)))
(assert (= r (fp #b0 #b01111000001 #b1111011010110100111100010000010100110100001100000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
