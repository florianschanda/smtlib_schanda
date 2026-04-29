(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.225889844089011138095202113618142902851104736328125 970 {+ 1017317417666050 970 (1.22334e+292)}
; 1.225889844089011138095202113618142902851104736328125 970 I == 1.225889844089011138095202113618142902851104736328125 970
; [HW: 1.225889844089011138095202113618142902851104736328125 970] 

; mpf : + 1017317417666050 970
; mpfd: + 1017317417666050 970 (1.22334e+292) class: Pos. norm. non-zero
; hwf : + 1017317417666050 970 (1.22334e+292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001001 #b0011100111010011111010101011010011011100011000000010)))
(assert (= r (fp #b0 #b11111001001 #b0011100111010011111010101011010011011100011000000010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
