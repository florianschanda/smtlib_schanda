(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3928763533986285860777343259542249143123626708984375p-386 {- 1769357798768743 -386 (-8.8376e-117)}
; -1.3928763533986285860777343259542249143123626708984375p-386 | == 1.3928763533986285860777343259542249143123626708984375p-386
; [HW: 1.3928763533986285860777343259542249143123626708984375p-386] 

; mpf : + 1769357798768743 -386
; mpfd: + 1769357798768743 -386 (8.8376e-117) class: Pos. norm. non-zero
; hwf : + 1769357798768743 -386 (8.8376e-117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001111101 #b0110010010010011100010110111000100111000000001100111)))
(assert (= r (fp #b0 #b01001111101 #b0110010010010011100010110111000100111000000001100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
