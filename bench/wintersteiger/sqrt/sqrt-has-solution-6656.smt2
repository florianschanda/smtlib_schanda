(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2822803650689194032707973747164942324161529541015625p533 {+ 1271277746938393 533 (3.60554e+160)}
; 1.2822803650689194032707973747164942324161529541015625p533 S == 1.601424593959340558768644768861122429370880126953125p266
; [HW: 1.601424593959340558768644768861122429370880126953125p266] 

; mpf : + 2708575577246738 266
; mpfd: + 2708575577246738 266 (1.89883e+080) class: Pos. norm. non-zero
; hwf : + 2708575577246738 266 (1.89883e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010100 #b0100100001000011100001101010100001000110001000011001)))
(assert (= r (fp #b0 #b10100001001 #b1001100111110110111101100101001000010000110000010010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
