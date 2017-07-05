(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.989812355695030010593882252578623592853546142578125p416 {- 4457718556274850 416 (-3.36737e+125)}
; -1.989812355695030010593882252578623592853546142578125p416 | == 1.989812355695030010593882252578623592853546142578125p416
; [HW: 1.989812355695030010593882252578623592853546142578125p416] 

; mpf : + 4457718556274850 416
; mpfd: + 4457718556274850 416 (3.36737e+125) class: Pos. norm. non-zero
; hwf : + 4457718556274850 416 (3.36737e+125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110011111 #b1111110101100100010101111011000011100011000010100010)))
(assert (= r (fp #b0 #b10110011111 #b1111110101100100010101111011000011100011000010100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
