(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8881272406469451485833133119740523397922515869140625p916 {+ 3999769510035169 916 (1.04594e+276)}
; 1.8881272406469451485833133119740523397922515869140625p916 S == 1.3740914236858277064357025665231049060821533203125p458
; [HW: 1.3740914236858277064357025665231049060821533203125p458] 

; mpf : + 1684757996313992 458
; mpfd: + 1684757996313992 458 (1.02271e+138) class: Pos. norm. non-zero
; hwf : + 1684757996313992 458 (1.02271e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010011 #b1110001101011100010011101000110101000011111011100001)))
(assert (= r (fp #b0 #b10111001001 #b0101111111000100011101001001111001110001110110001000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
