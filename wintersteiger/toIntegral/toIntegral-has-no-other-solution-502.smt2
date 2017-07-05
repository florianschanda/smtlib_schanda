(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7451237962018080196457958663813769817352294921875 864 {+ 3355739250919352 864 (2.14656e+260)}
; 1.7451237962018080196457958663813769817352294921875 864 I == 1.7451237962018080196457958663813769817352294921875 864
; [HW: 1.7451237962018080196457958663813769817352294921875 864] 

; mpf : + 3355739250919352 864
; mpfd: + 3355739250919352 864 (2.14656e+260) class: Pos. norm. non-zero
; hwf : + 3355739250919352 864 (2.14656e+260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011111 #b1011111011000000011011101110000000101000011110111000)))
(assert (= r (fp #b0 #b11101011111 #b1011111011000000011011101110000000101000011110111000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
