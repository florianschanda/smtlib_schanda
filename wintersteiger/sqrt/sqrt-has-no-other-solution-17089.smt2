(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.012960278978443984243540398892946541309356689453125p-93 {+ 58367907577938 -93 (1.02283e-028)}
; 1.012960278978443984243540398892946541309356689453125p-93 S == 1.423348361419960905749348967219702899456024169921875p-47
; [HW: 1.423348361419960905749348967219702899456024169921875p-47] 

; mpf : + 1906591522738846 -47
; mpfd: + 1906591522738846 -47 (1.01135e-014) class: Pos. norm. non-zero
; hwf : + 1906591522738846 -47 (1.01135e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100010 #b0000001101010001010111010110011001011100000001010010)))
(assert (= r (fp #b0 #b01111010000 #b0110110001100000100011101110011100011101001010011110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
