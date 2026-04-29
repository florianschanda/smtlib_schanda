(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9096056192200936418856827003764919936656951904296875p-415 {- 4096499527773723 -415 (-2.25681e-125)}
; -1.9096056192200936418856827003764919936656951904296875p-415 | == 1.9096056192200936418856827003764919936656951904296875p-415
; [HW: 1.9096056192200936418856827003764919936656951904296875p-415] 

; mpf : + 4096499527773723 -415
; mpfd: + 4096499527773723 -415 (2.25681e-125) class: Pos. norm. non-zero
; hwf : + 4096499527773723 -415 (2.25681e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100000 #b1110100011011011111010011111001011001110111000011011)))
(assert (= r (fp #b0 #b01001100000 #b1110100011011011111010011111001011001110111000011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
