(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1915737358587967786860417618299834430217742919921875p-460 {+ 862771405427651 -460 (4.00242e-139)}
; 1.1915737358587967786860417618299834430217742919921875p-460 S == 1.09159229378866395876457318081520497798919677734375p-230
; [HW: 1.09159229378866395876457318081520497798919677734375p-230] 

; mpf : + 412495020176636 -230
; mpfd: + 412495020176636 -230 (6.32647e-070) class: Pos. norm. non-zero
; hwf : + 412495020176636 -230 (6.32647e-070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110011 #b0011000100001010111110011111001001001001001111000011)))
(assert (= r (fp #b0 #b01100011001 #b0001011101110010100101111011001001100011010011111100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
