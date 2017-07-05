(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8143432007820050611002216101041994988918304443359375p-831 {- 3667475735593535 -831 (-1.26705e-250)}
; Y = 1.55472719037771600625319479149766266345977783203125p-381 {+ 2498269167877364 -381 (3.15665e-115)}
; -1.8143432007820050611002216101041994988918304443359375p-831 + 1.55472719037771600625319479149766266345977783203125p-381 == 1.55472719037771600625319479149766266345977783203125p-381
; [HW: 1.55472719037771600625319479149766266345977783203125p-381] 

; mpf : + 2498269167877364 -381
; mpfd: + 2498269167877364 -381 (3.15665e-115) class: Pos. norm. non-zero
; hwf : + 2498269167877364 -381 (3.15665e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000000 #b1101000001111000110010111100011100010100001000111111)))
(assert (= y (fp #b0 #b01010000010 #b1000111000000010100110011110010011011111110011110100)))
(assert (= r (fp #b0 #b01010000010 #b1000111000000010100110011110010011011111110011110100)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
