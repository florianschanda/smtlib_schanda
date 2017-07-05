(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8237714200024270905231560391257517039775848388671875 378 {+ 3709936660161395 378 (1.12282e+114)}
; 1.8237714200024270905231560391257517039775848388671875 378 I == 1.8237714200024270905231560391257517039775848388671875 378
; [HW: 1.8237714200024270905231560391257517039775848388671875 378] 

; mpf : + 3709936660161395 378
; mpfd: + 3709936660161395 378 (1.12282e+114) class: Pos. norm. non-zero
; hwf : + 3709936660161395 378 (1.12282e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111001 #b1101001011100010101011110000110001001010001101110011)))
(assert (= r (fp #b0 #b10101111001 #b1101001011100010101011110000110001001010001101110011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
