(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3213441219546988580901825116598047316074371337890625p211 {+ 1447205267892881 211 (4.34856e+063)}
; 1.3213441219546988580901825116598047316074371337890625p211 S == 1.625634720319850234915293185622431337833404541015625p105
; [HW: 1.625634720319850234915293185622431337833404541015625p105] 

; mpf : + 2817608293302522 105
; mpfd: + 2817608293302522 105 (6.59436e+031) class: Pos. norm. non-zero
; hwf : + 2817608293302522 105 (6.59436e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011010010 #b0101001001000011100110111011111010001110101010010001)))
(assert (= r (fp #b0 #b10001101000 #b1010000000101001100110001101011100000100000011111010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
